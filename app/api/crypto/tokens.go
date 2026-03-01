package crypto

import (
	"errors"
	"fmt"
	"net/http"
	"os"
	"time"

	"aidanwoods.dev/go-paseto"
	"github.com/google/uuid"
)

type AccessToken struct {
	Token      paseto.Token
	Expiration time.Time
	Encrypted  string
}

func (t *AccessToken) UserID() (uuid.UUID, error) {
	uid, err := t.Token.GetString("user-id")
	if err != nil {
		return uuid.Nil, fmt.Errorf("crypto: token.getUserID %w", err)
	}

	return uuid.Parse(uid)
}

// A key that can only be verified with the private key
// Is faster than Asym creation and verification
func encryptedKey(t paseto.Token) (string, error) {
	priv := os.Getenv("TOKEN_LOCAL_KEY")

	secretKey, err := paseto.V4SymmetricKeyFromHex(priv)
	if err != nil {
		return "", fmt.Errorf("could not create private key %w", err)
	}

	encrypted := t.V4Encrypt(secretKey, nil)
	return encrypted, nil
}

func (t *AccessToken) AddToCookie() *http.Cookie {
	// todo: maybe wrong place,

	/*
		Set-Cookie: access_token=eyJ…; HttpOnly; Secure
		Set-Cookie: refresh_token=…; Max-Age=31536000; Path=/api/auth/refresh; HttpOnly; Secure

	*/
	tCookie := new(http.Cookie)
	tCookie.Value = t.Encrypted
	tCookie.Expires = t.Expiration
	tCookie.HttpOnly = true
	tCookie.Secure = true
	tCookie.Name = "token"
	tCookie.Path = "/"
	return tCookie

	// lets do without token-expires for now
	// expCookie := new(http.Cookie)
	// expCookie.Name = "token-expires"
	// expCookie.Value = t.Expiration.String()
	// c.SetCookie(expCookie)

	// return nil
}

func (t *RefreshToken) AddToCookie() *http.Cookie {
	/*
		Set-Cookie: access_token=eyJ…; HttpOnly; Secure
		Set-Cookie: refresh_token=…; Max-Age=31536000; Path=/api/auth/refresh; HttpOnly; Secure

	*/
	tCookie := new(http.Cookie)
	tCookie.Value = t.Token
	tCookie.Expires = t.Exp
	tCookie.HttpOnly = true
	tCookie.Secure = true
	tCookie.Name = "refresh"
	tCookie.Path = "/"
	return tCookie

	// lets do without token-expires for now
	// expCookie := new(http.Cookie)
	// expCookie.Name = "token-expires"
	// expCookie.Value = t.Expiration.String()
	// c.SetCookie(expCookie)

	// return nil
}

// For Accesstoken normally use public keys (asymetric encryption) are used so that thirdparties can also verify the token.
// asymetric is slower but allows verification with public key.

var ErrNoAccessToken = errors.New("no access token")
var ErrInvalidAccessToken = errors.New("access token invalid")

func ValidTokenFromCookies(cookie *http.Cookie) (*AccessToken, error) {
	if cookie == nil || cookie.Value == "" {
		return nil, ErrNoAccessToken
	}

	priv := os.Getenv("TOKEN_LOCAL_KEY")
	symKey, err := paseto.V4SymmetricKeyFromHex(priv)
	if err != nil {
		return nil, fmt.Errorf("could not create private key %w", err)
	}

	parser := paseto.NewParser()
	token, err := parser.ParseV4Local(symKey, cookie.Value, nil)
	if err != nil {
		err = fmt.Errorf("token invalid (expiration %s): %w", cookie.Expires, err)
		return nil, errors.Join(err, ErrInvalidAccessToken)
	}

	// token.GetExpiration loses some very detailed info, but cookie doesn't seem to have them at all
	exp, err := token.GetExpiration()
	if err != nil {
		return nil, errors.Join(err, ErrInvalidAccessToken)
	}
	return &AccessToken{Token: *token, Expiration: exp, Encrypted: cookie.Value}, nil
}

func NewAccessToken(uid uuid.UUID) (*AccessToken, error) {
	token := paseto.NewToken()

	token.SetIssuedAt(time.Now())
	token.SetNotBefore(time.Now())

	addTime := 2 * time.Hour
	exp := time.Now().Add(addTime)
	token.SetExpiration(exp)

	token.SetString("user-id", uid.String())

	symKey, err := encryptedKey(token)
	if err != nil {
		return nil, fmt.Errorf("could not create symetric key for new refresh token %w", err)
	}

	return &AccessToken{
		Token:      token,
		Encrypted:  symKey,
		Expiration: exp,
	}, nil
}

type RefreshToken struct {
	Token  string
	Exp    time.Time
	Hashed []byte //256
}

func (t *RefreshToken) Clean() {
	h := t.Hashed
	for i := range h {
		h[i] = 0
	}
}

func NewRefreshToken(remember bool) *RefreshToken {
	addTime := 7 * 24 * time.Hour
	if remember {
		addTime = 40 * 24 * time.Hour
	}

	exp := time.Now().Add(addTime)

	sh, token := NewRandomHash()

	return &RefreshToken{
		Exp:    exp,
		Token:  token,
		Hashed: sh[:],
	}
}
