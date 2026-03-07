package services

import (
	"fmt"
	"os"

	"github.com/neifen/companion/app/api/storage/auth"
	"github.com/pkg/errors"
	"github.com/resend/resend-go/v3"
	"github.com/rs/zerolog/log"
)

func sendSignupMail(short, long string, u *auth.UserModel, p auth.VerificationPurpose) error {
	apiToken := os.Getenv("RESEND_TOKEN")
	base := os.Getenv("URL")

	var url string
	var id string
	if p == auth.PurposeEmail {
		id = "signup"
		url = fmt.Sprintf("%s/verify-signup?ltoken=%s", base, long)
	} else if p == auth.PurposePassword {
		id = "reset"
		url = fmt.Sprintf("%s/reset-password?ltoken=%s", base, long)
	}

	client := resend.NewClient(apiToken)

	emailTemp := &resend.EmailTemplate{
		Id: id,
		Variables: map[string]any{
			"USER_NAME":  u.Name,
			"CODE":       short,
			"VERIFY_URL": url,
		},
	}

	email := &resend.SendEmailRequest{
		To:       []string{u.Email},
		Template: emailTemp,
	}

	sent, err := client.Emails.Send(email)
	if err != nil {
		return errors.Wrapf(err, "mail service: send signup email to %s with uid %s", u.Email, u.ID)
	}

	log.Info().
		Str("email", u.Email).
		Any("user", u.ID).
		Str("email-ID", sent.Id).
		Str("short", short).
		Str("url", url).
		Str("id", id).
		Msg("mail service: sent signup email")
	return nil
}
