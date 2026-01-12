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

