package auth

import (
	"context"
	"fmt"
	"time"

	"github.com/pkg/errors"
)

const (
	usersTable         = "auth.users"
	refreshTokensTable = "auth.refresh_tokens"
)

func (pg *AuthStore) CreateUser(ctx context.Context, u *UserModel) error {
	var userid int //dont really need it
	row := pg.db.QueryRow(ctx, "INSERT INTO "+usersTable+"(name, email, pw, uid) VALUES ($1, $2, $3, $4) RETURNING id", u.Name, u.Email, u.Pw, u.UID)
	err := row.Scan(&userid)

	if err != nil {

		if err.Error() == `pq: duplicate key value violates unique constraint "users_email_key"` {
			return fmt.Errorf("user %s already exists", u.Email)
		}
		return errors.New("db error 430: could not add user")
	}
	return nil
}

func (*AuthStore) UpdateUser(u *UserModel) error {
	//TODO
	return nil
}

func (*AuthStore) DeleteUser(u *UserModel) error {
	//TODO
	return nil
}

func (pg *AuthStore) ReadUserByEmail(ctx context.Context, req string) (*UserModel, error) {
	row := pg.db.QueryRow(ctx, "SELECT id, email, pw, name, uid from "+usersTable+" where email=$1", req)

	var id int
	var email string
	var pw []byte
	var name string
	var uid string

	err := row.Scan(&id, &email, &pw, &name, &uid)
	if err != nil {
		return nil, fmt.Errorf("db error 431: could not read user %s", req)
	}

	return &UserModel{
		ID:    id,
		Email: email,
		Pw:    pw,
		Name:  name,
		UID:   uid,
	}, nil
}

func (pg *AuthStore) ReadUserByUID(ctx context.Context, uid string) (*UserModel, error) {
	row := pg.db.QueryRow(ctx, "SELECT id, email, pw, name, uid from "+usersTable+" where uid=$1", uid)

	var id int
	var email string
	var pw []byte
	var name string
	var uidRes string

	err := row.Scan(&id, &email, &pw, &name, &uidRes)
	if err != nil {
		return nil, fmt.Errorf("db error 441: could not read user %s", uid)
	}

	return &UserModel{
		ID:    id,
		Email: email,
		Pw:    pw,
		Name:  name,
		UID:   uidRes,
	}, nil
}

func (pg *AuthStore) CreateRefreshToken(ctx context.Context, t *RefreshTokenModel) error {
	var id int //dont really need it
	row := pg.db.QueryRow(ctx, "INSERT INTO "+refreshTokensTable+"(user_uid, token, expires, remember) VALUES ($1, $2, $3, $4) RETURNING id", t.UserUID, t.Token, t.Expiration, t.Remember)
	err := row.Scan(&id)

	if err != nil {
		return err
		// return errors.New("db error 610: could not add new refresh_token")
	}
	return nil
}

func (pg *AuthStore) DeleteRefreshToken(ctx context.Context, t *RefreshTokenModel) error {
	_, err := pg.db.Query(ctx, "DELETE FROM "+refreshTokensTable+" rt where rt.id = $1", t.id)
	if err != nil {
		return fmt.Errorf("db error 620: could not delete refresh_token %v", t.id)
	}
	return nil
}

func (pg *AuthStore) DeleteRefreshTokenByToken(ctx context.Context, token string) error {
	_, err := pg.db.Query(ctx, "DELETE FROM "+refreshTokensTable+" rt where rt.token = $1", token)
	if err != nil {
		return fmt.Errorf("db error 621: could not delete refresh_token %v", token)
	}
	return nil
}

func (pg *AuthStore) ReadRefreshTokenByToken(ctx context.Context, token string) (*RefreshTokenModel, error) {
	row := pg.db.QueryRow(ctx, "SELECT id, user_uid, token, expires, remember from "+refreshTokensTable+" where token = $1", token)

	var id int
	var tokenRes string
	var userUID string
	var expiration time.Time
	var remember bool

	err := row.Scan(&id, &userUID, &tokenRes, &expiration, &remember)
	if err != nil {
		return nil, fmt.Errorf("db error 630: could not read refresh_token %s", token)
	}

	return &RefreshTokenModel{
		id:         id,
		Token:      tokenRes,
		UserUID:    userUID,
		Expiration: expiration,
		Remember:   remember,
	}, nil
}
