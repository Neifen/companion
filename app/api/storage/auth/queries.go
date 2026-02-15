package auth

import (
	"context"
	"fmt"
	"time"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	"github.com/pkg/errors"
)

const (
	usersTable         = "auth.users"
	refreshTokensTable = "auth.refresh_tokens"
)

func (pg *AuthStore) CreateUser(ctx context.Context, u *UserModel) error {
	args := pgx.NamedArgs{
		"id":    u.ID,
		"name":  u.Name,
		"email": u.Email,
		"pw":    u.Pw,
	}

	_, err := pg.db.Exec(ctx, "INSERT INTO "+usersTable+"(id, name, email, pw) VALUES (@id, @name, @email, @pw)", args)
	if err != nil {
		return errors.Wrapf(err, "db: Create User %s %s, %s", u.ID, u.Name, u.Email)
	}

	return nil
}

func (pg *AuthStore) UpdateUser(ctx context.Context, u *UserModel) error {
	ags := pgx.NamedArgs{
		"name":  u.Name,
		"email": u.Email,
		"pw":    u.Pw,
		"id":    u.ID,
	}
	ct, err := pg.db.Exec(ctx, "UPDATE "+usersTable+" set name = @name, email=@email, pw=@pw where id = @id ", ags)
	if err != nil {
		return errors.Wrapf(err, "db: Update User %s, %s with ID %d", u.Name, u.Email, u.ID)
	}

	if ct.RowsAffected() != 1 {
		return errors.Errorf("db: Update User %s, %s with ID %d- No Rows affected", u.Name, u.Email, u.ID)
	}

	return nil
}

func (pg *AuthStore) DeleteUser(ctx context.Context, u *UserModel) error {
	ct, err := pg.db.Exec(ctx, "DELETE FROM"+usersTable+" where id = $1 ", u.ID)
	if err != nil {
		return errors.Wrapf(err, "db: Delete User %s, %s with ID %d", u.Name, u.Email, u.ID)
	}

	if ct.RowsAffected() != 1 {
		return errors.Errorf("db: Delete User %s, %s with ID %d - No Rows affected", u.Name, u.Email, u.ID)
	}

	return nil
}

func (pg *AuthStore) ReadUserByEmail(ctx context.Context, emailReq string) (*UserModel, error) {
	row := pg.db.QueryRow(ctx, "SELECT id, email, pw, name from "+usersTable+" where email=$1", emailReq)

	var id uuid.UUID
	var email string
	var pw []byte
	var name string

	err := row.Scan(&id, &email, &pw, &name)
	if err != nil {
		return nil, errors.Wrapf(err, "db: ReadUserByEmail %s", emailReq)
	}

	return &UserModel{
		ID:    id,
		Email: email,
		Pw:    pw,
		Name:  name,
	}, nil
}

func (pg *AuthStore) ReadUserByUID(ctx context.Context, idReq uuid.UUID) (*UserModel, error) {
	row := pg.db.QueryRow(ctx, "SELECT id, email, pw, name from "+usersTable+" where id=$1", idReq)

	var id uuid.UUID
	var email string
	var pw []byte
	var name string

	err := row.Scan(&id, &email, &pw, &name)
	if err != nil {
		return nil, errors.Wrapf(err, "db: ReadUserByUID %s", idReq)
	}

	return &UserModel{
		ID:    id,
		Email: email,
		Pw:    pw,
		Name:  name,
	}, nil
}

func (pg *AuthStore) CreateRefreshToken(ctx context.Context, t *RefreshTokenModel) error {
	var id int //dont really need it
	row := pg.db.QueryRow(ctx, "INSERT INTO "+refreshTokensTable+"(user_id, token, expires, remember) VALUES ($1, $2, $3, $4) RETURNING id", t.UserUID, t.Token, t.Expiration, t.Remember)
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
	row := pg.db.QueryRow(ctx, "SELECT id, user_id, token, expires, remember from "+refreshTokensTable+" where token = $1", token)

	var id int
	var tokenRes string
	var userUID uuid.UUID
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
