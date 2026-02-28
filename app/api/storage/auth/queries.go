package auth

import (
	"context"
	"fmt"
	"time"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	"github.com/neifen/companion/app/api/crypto"
	"github.com/pkg/errors"
)

const (
	usersTable              = "auth.users"
	refreshTokensTable      = "auth.refresh_tokens"
	verificationTokensTable = "auth.verification_tokens"
)

func (pg *AuthStore) CreateVerification(ctx context.Context, u *VerificationTokenModel) error {
	args := pgx.NamedArgs{
		"user_id":    u.UserUID,
		"token_hash": u.TokenHash,
		"channel":    u.Channel,
		"purpose":    u.Purpose,
		"expires_at": u.Expiration,
	}

	_, err := pg.db.Exec(ctx, "INSERT INTO "+verificationTokensTable+"(user_id, token_hash, channel, purpose, expires_at) VALUES (@user_id, @token_hash, @channel, @purpose, @expires_at)", args)
	if err != nil {
		return errors.Wrapf(err, "db: Create Verification Token for user %s ", u.UserUID)
	}

	return nil
}

func (pg *AuthStore) InvalidateVerificationToken(ctx context.Context, u *VerificationTokenModel) error {
	_, err := pg.db.Exec(ctx, "UPDATE "+verificationTokensTable+" set purpose = 'invalid' where id=$1", u.ID)
	if err != nil {
		return errors.Wrapf(err, "db: Consume Verification Token for user %s ", u.UserUID)
	}

	return nil
}
func (pg *AuthStore) AddVerificationAttempt(ctx context.Context, uid uuid.UUID) error {
	_, err := pg.db.Exec(ctx, "UPDATE "+verificationTokensTable+" set attempts = attempts + 1 where user_id=$1", uid)
	if err != nil {
		fmt.Printf("db: Add verification attempt for user %s with err \n%+s\n", uid, err)
		return errors.Wrapf(err, "db: Add verification attempt for user %s ", uid)
	}

	return nil
}

func (pg *AuthStore) ConsumeVerification(ctx context.Context, u *VerificationTokenModel) error {
	_, err := pg.db.Exec(ctx, "UPDATE "+verificationTokensTable+" set consumed_at = $1 where purpose=$2 and user_id=$3", u.Consumed, u.Purpose, u.UserUID)
	if err != nil {
		return errors.Wrapf(err, "db: Consume Verification Token for user %s ", u.UserUID)
	}

	return nil
}

func (pg *AuthStore) DeleteVerificationToken(ctx context.Context, u *VerificationTokenModel) error {
	_, err := pg.db.Exec(ctx, "DELETE FROM "+verificationTokensTable+" where id=$1", u.ID)
	if err != nil {
		return errors.Wrapf(err, "db: Delete verification Token for user %s ", u.UserUID)
	}

	return nil
}

func (pg *AuthStore) ReadUserVerification(ctx context.Context, purposeIn VerificationPurpose, uid uuid.UUID) (*VerificationTokenModel, error) {
	row := pg.db.QueryRow(ctx, "SELECT id, channel, purpose, attempts, expires_at, consumed_at, created_at from "+verificationTokensTable+" where user_id = $1 and purpose=$2", uid, purposeIn)

	var id int
	var channel string
	var purpose VerificationPurpose
	var attempts int16
	var expiration time.Time
	var comsumed *time.Time
	var createdAt time.Time

	err := row.Scan(&id, &channel, &purpose, &attempts, &expiration, &comsumed, &createdAt)
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return nil, nil
		}

		return nil, errors.Wrapf(err, "db: Read User Verification Token with uid %s", uid)
	}

	model := &VerificationTokenModel{
		ID:         id,
		UserUID:    uid,
		Channel:    channel,
		Purpose:    purpose,
		Attempts:   attempts,
		Consumed:   comsumed,
		Expiration: expiration,
		CreatedAt:  createdAt,
	}

	return model, nil
}

func (pg *AuthStore) ReadVerification(ctx context.Context, hashedToken []byte) (*VerificationTokenModel, error) {
	row := pg.db.QueryRow(ctx, "SELECT id, user_id, channel, purpose, attempts, expires_at, consumed_at from "+verificationTokensTable+" where token_hash = $1", hashedToken)

	var id int
	var uid uuid.UUID
	var channel string
	var purpose VerificationPurpose
	var attempts int16
	var expiration time.Time
	var comsumed *time.Time

	err := row.Scan(&id, &uid, &channel, &purpose, &attempts, &expiration, &comsumed)
	if err != nil {
		return nil, errors.Wrap(err, "db: Read Verification Token")
	}

	model := &VerificationTokenModel{
		ID:         id,
		UserUID:    uid,
		Channel:    channel,
		Purpose:    purpose,
		Attempts:   attempts,
		Consumed:   comsumed,
		Expiration: expiration,
	}

	return model, nil
}

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

func (pg *AuthStore) UserVerified(ctx context.Context, uid uuid.UUID) error {
	_, err := pg.db.Exec(ctx, "UPDATE "+usersTable+" set verified = true, status = 'VERIFIED' where id=$1", uid)
	if err != nil {
		return errors.Wrapf(err, "db: User Verified for user %s ", uid)
	}

	return nil
}

func (pg *AuthStore) UpdateUserPassword(ctx context.Context, uid uuid.UUID, pw []byte) error {
	_, err := pg.db.Exec(ctx, "UPDATE "+usersTable+" set pw=$1 where id = $2 ", pw, uid)
	if err != nil {
		return errors.Wrapf(err, "db: Update User Password ID %d", uid)
	}

	return nil
}

func (pg *AuthStore) UpdateUser(ctx context.Context, u *UserModel) error {
	ags := pgx.NamedArgs{
		"name":   u.Name,
		"email":  u.Email,
		"pw":     u.Pw,
		"id":     u.ID,
		"status": u.Status,
	}
	ct, err := pg.db.Exec(ctx, "UPDATE "+usersTable+" set name = @name, email=@email, pw=@pw, status=@status where id = @id ", ags)
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
	row := pg.db.QueryRow(ctx, "SELECT id, email, pw, name, status from "+usersTable+" where email=$1", emailReq)

	var id uuid.UUID
	var email string
	var pw []byte
	var name string
	var status string

	err := row.Scan(&id, &email, &pw, &name, &status)
	if err != nil {
		return nil, errors.Wrapf(err, "db: ReadUserByEmail %s", emailReq)
	}

	return &UserModel{
		ID:     id,
		Email:  email,
		Pw:     pw,
		Name:   name,
		Status: status,
	}, nil
}

func (pg *AuthStore) ReadUserByUID(ctx context.Context, idReq uuid.UUID) (*UserModel, error) {
	row := pg.db.QueryRow(ctx, "SELECT id, email, pw, name, status from "+usersTable+" where id=$1", idReq)

	var id uuid.UUID
	var email string
	var pw []byte
	var name string
	var status string

	err := row.Scan(&id, &email, &pw, &name, &status)
	if err != nil {
		return nil, errors.Wrapf(err, "db: ReadUserByUID %s", idReq)
	}

	return &UserModel{
		ID:     id,
		Email:  email,
		Pw:     pw,
		Name:   name,
		Status: status,
	}, nil
}

func (pg *AuthStore) StoreRefreshToken(ctx context.Context, uid uuid.UUID, t *crypto.RefreshToken) error {
	_, err := pg.db.Exec(ctx, "INSERT INTO "+refreshTokensTable+"(user_id, token_hash, expires) VALUES ($1, $2, $3)", uid, t.Hashed, t.Exp)
	if err != nil {
		return errors.Wrapf(err, "db: Store Refresh Token")
	}

	return nil
}

func (pg *AuthStore) DeleteRefreshTokenByToken(ctx context.Context, hashed []byte) error {
	_, err := pg.db.Exec(ctx, "DELETE FROM "+refreshTokensTable+" rt where rt.token_hash = $1", hashed)
	if err != nil {
		return fmt.Errorf("db error 621: could not delete refresh_token %v", hashed)
	}
	return nil
}

func (pg *AuthStore) ReadRefreshTokenByToken(ctx context.Context, hashed []byte) (*RefreshTokenModel, error) {
	row := pg.db.QueryRow(ctx, "SELECT id, user_id, expires, remember from "+refreshTokensTable+" where token_hash = $1", hashed)

	var id int
	var userUID uuid.UUID
	var expiration time.Time
	var remember bool

	err := row.Scan(&id, &userUID, &expiration, &remember)
	if err != nil {
		return nil, errors.Wrapf(err, "db error 630: could not read refresh_token %s", hashed)
	}

	return &RefreshTokenModel{
		ID:         id,
		UserUID:    userUID,
		Expiration: expiration,
		Remember:   remember,
	}, nil
}
