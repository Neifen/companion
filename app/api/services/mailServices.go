package services

import (
	"fmt"
	"os"

	"github.com/neifen/companion/app/api/storage/auth"
	"github.com/pkg/errors"
	"github.com/resend/resend-go/v3"
	"github.com/rs/zerolog/log"
)

func sendSignupMail(short, long string, u *auth.UserModel) error {
	apiToken := os.Getenv("RESEND_TOKEN")
	base := os.Getenv("URL")
	url := fmt.Sprintf("%s/verify-signup?ltoken=%s", base, long)

	client := resend.NewClient(apiToken)

	emailTemp := &resend.EmailTemplate{
		Id: "signup",
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
		Msg("mail service: sent signup email")
	return nil
}
