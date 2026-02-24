CREATE SCHEMA IF NOT EXISTS public;
CREATE SCHEMA IF NOT EXISTS auth;

CREATE EXTENSION IF NOT EXISTS citext;
CREATE EXTENSION IF NOT EXISTS pgcrypto;


CREATE TABLE IF NOT EXISTS auth.users(
    id uuid PRIMARY KEY,
    name varchar NOT NULL,
    email citext NOT NULL UNIQUE,
    pw bytea NOT NULL,
    verified boolean not null default false, -- todo: or verification status (pending, active, disabled)
    status text not null default 'UNVERIFIED', --account state: UNVERIFIED, VERIFIED, SUSPENDED, DELETED
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW()
);



CREATE TABLE IF NOT EXISTS auth.refresh_tokens(
    id serial PRIMARY KEY,
    user_id uuid NOT NULL REFERENCES auth.users(id) on delete cascade,
    token_hash bytea NOT NULL,
    remember boolean DEFAULT FALSE,
    expires timestamptz NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS auth.verification_tokens(
  id            serial primary key,
  user_id       uuid not null references auth.users(id) on delete cascade,
  token_hash    bytea not null, -- compare is enough
  channel       text not null, -- 'email'(lm/sm) | 'sms'(ls/ss)
  purpose       text not null, -- 'signup' | 'email_change' | 'password_reset' | 'invalid'
  attempts      smallint not null default 0,
  expires_at    timestamptz not null, --todo: cleanup needed
  consumed_at   timestamptz, -- Idempotency (clicking link twice)
  created_at    timestamptz not null default now()
);

CREATE TABLE IF NOT EXISTS auth.ip_tracking(
    id bigserial primary key,
    ip TEXT not null,
    user_id uuid references auth.users(id) on delete cascade,
    created_at TIMESTAMP not null default now() --todo: cleanup needed
);

CREATE UNIQUE INDEX IF NOT EXISTS users_unique_lower_email_idx ON auth.users(LOWER(email));