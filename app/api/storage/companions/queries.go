package companions

import (
	"context"

	"github.com/pkg/errors"
)

const (
	companionsTable      = "companions.companions"
	companionItemsTable  = "companions.companion_items"
	companionImagesTable = "companions.companion_images"
	planCompanionsTable  = "companions.plan_companions"
)

func (pg *CompanionsStore) ReadChaptersCompanion(ctx context.Context, planID int64, chapterID int16) (string, error) {
	// todo rows instead of _
	_, err := pg.db.Query(ctx, `
	    select
			*
		from
			`+planCompanionsTable+`  pb
		join
		`+companionsTable+` c on
			pb.plan_fk = :plan_id
			and c.id = pb.companion_fk
		join `+companionItemsTable+` ci on
			:chapter >= ci.chapter_start_fk
			and :chapter <= ci.chapter_end_fk
			and c.id = ci.companion_fk;
`, planID)
	if err != nil {
		return "", errors.Wrapf(err, "ReadChaptersFromPlan(%d) select", planID)
	}

	return "chapters", nil
}
