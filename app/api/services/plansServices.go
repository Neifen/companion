package services

import (
	"context"
	"fmt"
	"strconv"
	"strings"

	"github.com/neifen/htmx-login/app/api/storage/bible"
	"github.com/neifen/htmx-login/app/api/storage/plans"
	"github.com/pkg/errors"
)

func (s *Services) GetAllPlans(ctx context.Context) ([]plans.PlanModel, error) {
	return s.store.Plans.ReadAllPlans(ctx)
}

// returns biblechapter, bool (has verses), error
func parseBook(book string) ([]bible.BibleChapter, bool, error) {
	book = strings.TrimSpace(book)
	split := strings.SplitN(book, ":", 2) //chapters

	if len(split) == 1 {
		return []bible.BibleChapter{{Book: book, WholeBook: true}}, false, nil
	} else {
		book = split[0]
		chapters := split[1]
		return parseChapter(book, chapters)
	}
}

func parseChapter(book, chapters string) ([]bible.BibleChapter, bool, error) {
	book = strings.TrimSpace(book)
	hasVerses := false

	splitChapters := strings.Split(chapters, ",")
	chapterRes := []bible.BibleChapter{}
	for _, chapter := range splitChapters {
		chapter = strings.TrimSpace(chapter)
		splitVerses := strings.Split(chapter, ":") //verses
		if len(splitVerses) == 1 {                 // no verses
			splitChapterRange := strings.SplitN(chapter, "-", 2)

			fromRaw := strings.TrimSpace(splitChapterRange[0])
			from, err := strconv.Atoi(fromRaw)
			if err != nil {
				return nil, false, fmt.Errorf("plans service: Parse chapter %s in %s %s %w", splitChapterRange[0], book, chapters, err)
			}
			if len(splitChapterRange) == 1 {
				chapterRes = append(chapterRes, bible.BibleChapter{Book: book, Chapter: int16(from)})
			} else {
				toRaw := strings.TrimSpace(splitChapterRange[1])
				to, err := strconv.Atoi(toRaw)
				if err != nil {
					return nil, false, fmt.Errorf("plans service: Parse chapter %s in %s %s %w", splitChapterRange[1], book, chapters, err)
				}

				for ch := from; ch <= to; ch++ {
					chapterRes = append(chapterRes, bible.BibleChapter{Book: book, Chapter: int16(ch)})
				}
			}
		} else {
			hasVerses = true
			verses, err := parseVerses(book, splitVerses[0], splitVerses[1])
			if err != nil {
				return nil, true, fmt.Errorf("plans service: Parse chapter %s %s %w", book, chapters, err)
			}
			chapterRes = append(chapterRes, verses)
		}
	}
	return chapterRes, hasVerses, nil
}

// returns models, bool (has verses), error
func parseVerses(book, chapter, verses string) (bible.BibleChapter, error) {
	chapter = strings.TrimSpace(chapter)
	verses = strings.TrimSpace(verses)

	ch, err := strconv.Atoi(chapter)
	if err != nil {
		return bible.BibleChapter{}, fmt.Errorf("plans service: Parse verse. chapter %s in %s %s %w", chapter, chapter, verses, err)
	}

	verseSplit := strings.Split(verses, "-")

	fromRaw := strings.TrimSpace(verseSplit[0])
	from, err := strconv.Atoi(fromRaw)
	if err != nil {
		return bible.BibleChapter{}, fmt.Errorf("plans service: Parse verse %s in %s %w", verseSplit[0], verses, err)
	}

	if len(verseSplit) == 1 {
		return bible.BibleChapter{Book: book, Chapter: int16(ch), VerseStart: int16(from), VerseEnd: int16(from)}, nil
	} else {

		toRaw := strings.TrimSpace(verseSplit[1])
		to, err := strconv.Atoi(toRaw)
		if err != nil {
			return bible.BibleChapter{}, fmt.Errorf("plans service: Parse verse %s in %s %w", verseSplit[1], verses, err)
		}

		return bible.BibleChapter{Book: book, Chapter: int16(ch), VerseStart: int16(from), VerseEnd: int16(to)}, nil
	}
}

func (s *Services) CreateNewPlan(ctx context.Context, name, desc string, books []string, cutRatio int) (int, error) {
	parsedChapters := []bible.BibleChapter{}
	hasVerses := false
	for _, book := range books {
		chs, hasV, err := parseBook(book)
		hasVerses = hasV || hasVerses
		if err != nil {
			return -1, fmt.Errorf("plans service: Create New Plan %w", err)
		}
		parsedChapters = append(parsedChapters, chs...)
	}

	if hasVerses && cutRatio > 0 {
		return -1, errors.Errorf("plans service: Create New Plan: Can't have verses in the books (%v) and use a cutRatio (%d):", books, cutRatio)
	}

	if err := s.store.CreateTX(ctx); err != nil {
		return -1, fmt.Errorf("plans service: Create New Plan %w", err)
	}
	defer s.store.RollbackTX(ctx)

	chapterModels, err := s.store.Bible.ReadBookChapters(ctx, parsedChapters)
	if err != nil {
		return -1, fmt.Errorf("plans service: Create New Plan %w", err)
	}

	includeVerses := cutRatio > 0 || hasVerses
	planID, err := s.store.Plans.CreateNewPlan(ctx, name, desc, includeVerses)
	if err != nil {
		return -1, fmt.Errorf("plans service: Create New Plan %w", err)
	}

	if cutRatio > 0 {
		chapterModels, err = s.insertSplitVerses(ctx, planID, cutRatio, chapterModels)
		if err != nil {
			return -1, fmt.Errorf("plans service: Create New Plan %w", err)
		}
	}

	err = s.store.Plans.CreateNewBiblePlan(ctx, planID, chapterModels)
	if err != nil {
		return -1, fmt.Errorf("plans service: Create New Plan %w", err)
	}

	if err = s.store.CommitTX(ctx); err != nil {
		return -1, fmt.Errorf("plans service: Create New Plan %w", err)
	}

	return planID, nil
}

// todo: test
func (s *Services) insertSplitVerses(ctx context.Context, planID, cutRatio int, chapters []bible.ChapterModel) ([]bible.ChapterModel, error) {
	// calculate average
	total := 0
	for _, ch := range chapters {
		total += int(ch.WordCount)
	}
	avg := float32(len(chapters)) / float32(total)

	// find the chapters to cut
	chaptersToCut := []int16{}
	for _, ch := range chapters {
		if float32(ch.WordCount) > (avg * float32(cutRatio)) {
			chaptersToCut = append(chaptersToCut, ch.ID)
		}
	}

	//get verses info
	verseModels, err := s.store.Bible.ReadVerses(ctx, chaptersToCut)
	if err != nil {
		return nil, fmt.Errorf("plans service: Get Split Verses %w", err)
	}

	var blocksIDS [][]int16
	var blocksLength []int16
	var blocksChapter []int16
	var blockStarts []int16
	var blockEnds []int16

	chapter := int16(0)
	iter := -1
	for _, v := range verseModels {
		if chapter != v.ChapterID {
			// next chapter
			chapter = v.ChapterID

			//special case: length is too small, add to last block
			if float32(blocksLength[iter]) < (avg * 0.75) {
				last := iter - 1
				blocksLength[last] += blocksLength[iter]
				blocksIDS[last] = append(blocksIDS[last], blocksIDS[iter]...)
				blockEnds[last] = blockEnds[iter]

				blocksLength[iter] = 0
				blocksIDS[iter] = []int16{}
				blocksChapter[iter] = chapter
				blockStarts[iter] = 1
			} else {
				// go to next chapter
				iter++
				blocksLength = append(blocksLength, 0)
				blocksIDS = append(blocksIDS, []int16{})
				blocksChapter = append(blocksChapter, chapter)
				blockEnds = append(blockEnds, 1)
				blockStarts = append(blockStarts, 1)
			}
		}

		blocksLength[iter] += v.Length
		blocksIDS[iter] = append(blocksIDS[iter], v.ID)
		blockEnds[iter] = v.VerseNr

		// in case we go over avg, create new block
		if float32(blocksLength[iter]) > avg {
			iter++
			blocksLength = append(blocksLength, 0)
			blocksIDS = append(blocksIDS, []int16{})
			blocksChapter = append(blocksChapter, chapter)
			blockStarts = append(blockStarts, v.VerseNr+1)
			blockEnds = append(blockEnds, v.VerseNr+1)
		}

	}

	// now iterate through original slice and when getting to "slicetocut" append verses. (use iterator for slicetocut and versesblocks)
	chToCutIter := 0
	blockIter := 0
	for i := 0; i < len(chapters); i++ {
		ch := chapters[i]
		chToCut := chaptersToCut[chToCutIter]

		if ch.ID == chToCut {
			for blocksChapter[blockIter] == chToCut {
				newLength := blocksLength[blockIter]
				newIDS := blocksIDS[blockIter]
				newDesc := fmt.Sprintf("%s %d: %d-%d", ch.BookName, ch.ChapterNr, blockStarts[blockIter], blockEnds[blockIter])
				block := bible.ChapterModel{ch.ID, ch.BookName, ch.BookID, ch.ChapterNr, newLength, newIDS, newDesc}
				blockIter++

				// insert block
				chapters = append(chapters, bible.ChapterModel{})
				copy(chapters[i+1:], chapters[i:])
				chapters[i] = block
				i++
			}
		}

	}

	return chapters, nil
}
