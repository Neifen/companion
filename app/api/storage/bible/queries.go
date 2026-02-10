package bible

import (
	"context"
	"fmt"

	"github.com/jackc/pgx/v5"
	"github.com/pkg/errors"
)

const (
	plansTable      = "plans.plans"
	biblePlansTable = "plans.bible_plans"
	chaptersTable   = "static.chapters"
	versesTable     = "static.verses"
)

func (pg *BibleStore) ReadPlanChapter(ctx context.Context, planID int) ([]ChapterModel, error) {
	rows, err := pg.db.Query(ctx, `
		select c.id, c.book_name, c.book_id, c.chapter_nr, bp.length as word_count, bp.verse_fks as verses, bp.verses as verses_title from `+plansTable+` p 
		join `+biblePlansTable+` bp on bp.plan_fk = p.id
		join `+chaptersTable+` c on bp.chapter_fk = c.id
		where p.id = $1
		order by bp.id;
`, planID)
	if err != nil {
		return nil, errors.Wrapf(err, "ReadPlanChapter(%d) select", planID)
	}

	chapters, err := pgx.CollectRows(rows, pgx.RowToStructByNameLax[ChapterModel])
	if err != nil {
		return nil, errors.Wrapf(err, "ReadPlanChapter(%d) scan", planID)
	}
	return chapters, nil
}

func (pg *BibleStore) ReadBookChapters(ctx context.Context, parsedChapters []BibleChapter) ([]ChapterModel, error) {

	books := []string{}
	chapters := []int16{}
	versesStart := []int16{}
	versesEnd := []int16{}
	wholeBook := []bool{}

	for _, pch := range parsedChapters {
		books = append(books, pch.Book)
		chapters = append(chapters, pch.Chapter)
		versesStart = append(versesStart, pch.VerseStart)
		versesEnd = append(versesEnd, pch.VerseEnd)
		wholeBook = append(wholeBook, pch.WholeBook)
	}

	rows, err := pg.db.Query(ctx, `
	SELECT 
		c.id, c.book_name, c.book_id, c.chapter_nr, 
		coalesce (sum(v.verse_word_count) , c.chapter_word_count ) as word_count, 
		coalesce(array_agg(v.id order by v.id) filter (where v.id is not null), '{}') as verses,
		case when count(v.id) = 0 
			then '' 
			else c.book_name || ' ' || c.chapter_nr || ':' || 	
				(case when min(v.id) = max(v.id) 
					then min(verse_nr)::text
					else min(verse_nr) || '-' || max(verse_nr)
				end)
		end as verses_title
	FROM unnest($1::text[], $2::boolean[], $3::smallint[], $4::smallint[], $5::smallint[]) WITH ORDINALITY AS chn(book, wholebook, nr, vfrom, vto, ord) 
		join `+chaptersTable+` c on (chn.nr=c.chapter_nr or chn.wholebook ) and lower(c.book_name)=lower(chn.book)
		left join `+versesTable+` v on c.id = v.chapter_fk and chn.vfrom <= v.verse_nr and chn.vto >= v.verse_nr
	 	group by chn.ord, c.id
	 	order by chn.ord, c.id `, books, wholeBook, chapters, versesStart, versesEnd)
	if err != nil {
		return nil, errors.Wrapf(err, "ReadBookChapters(parsed chapters: %v) select", parsedChapters)
	}

	chapterModels, err := pgx.CollectRows(rows, pgx.RowToStructByNameLax[ChapterModel])
	if err != nil {
		return nil, errors.Wrapf(err, "ReadBookChapters(parsed chapters: %v) scanning", parsedChapters)
	}

	return chapterModels, nil
}

func (pg *BibleStore) ReadVerses(ctx context.Context, chaptersIDs []int16) ([]VerseModel, error) {
	rows, err := pg.db.Query(context.Background(), `    
	select 
		v.id
		v.verse_nr
		v.length
		v.chapter_fk
	from
		unnest($1::smallint[]) ordinated as c(verse_id, ord) 
	join static.verses v
		on v.id = c.verse_id
	order by ord
	`)
	if err != nil {
		return nil, fmt.Errorf("bible storage: Read Verses for chapters %v %w", chaptersIDs, err)
	}

	verseModels, err := pgx.CollectRows(rows, pgx.RowToStructByName[VerseModel])
	if err != nil {
		return nil, fmt.Errorf("bible storage: Read Verses for chapters %v %w", chaptersIDs, err)
	}

	return verseModels, nil
}
