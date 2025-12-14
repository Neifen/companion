CREATE EXTENSION IF NOT EXISTS citext;

CREATE SCHEMA IF NOT EXISTS auth;

CREATE TABLE IF NOT EXISTS auth.users(
    id serial PRIMARY KEY,
    name varchar NOT NULL,
    email citext NOT NULL UNIQUE,
    pw bytea NOT NULL,
    uid varchar NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS auth.refresh_tokens(
    id serial PRIMARY KEY,
    user_uid varchar NOT NULL,
    token varchar NOT NULL,
    remember boolean DEFAULT FALSE,
    expires timestamptz NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW()
);

CREATE UNIQUE INDEX IF NOT EXISTS users_unique_lower_email_idx ON auth.users(LOWER(email));

--todo remove this, only for test
INSERT INTO auth.users("id", "name", email, pw, uid, created_at, updated_at)
    VALUES (0, 'Nate', 'nate@test.ch', DECODE('F01799B988381AB571305D974AD97AA52CD6A9D0CAB5FB1EDE4639D8CE9BA914', 'hex'), 'de08c80c-c2cf-4e9c-abab-e60ad435fc3c', '2025-08-05 13:59:23.680187-04', '2025-08-05 13:59:23.680187-04')
ON CONFLICT
    DO NOTHING;

