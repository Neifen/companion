package services

import (
	"fmt"
	"os"

	"github.com/neifen/companion/app/api/storage/auth"
	"github.com/pkg/errors"
	"github.com/resend/resend-go/v3"
)

func sendSignupMail(short, long string, u *auth.UserModel) error {
	apiToken := os.Getenv("RESEND_TOKEN")
	client := resend.NewClient(apiToken)

	emailTemp := &resend.EmailTemplate{
		Id: "signup",
		Variables: map[string]any{
			"USER_NAME":  u.Name,
			"CODE":       short,
			"VERIFY_URL": long,
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

	fmt.Printf("mail service: sent signup email %s to %s with uid %s", sent.Id, u.Email, u.ID) //todo: real logging
	return nil
}
