CREATE TABLE
    IF NOT EXISTS
    users
(
    id         SERIAL PRIMARY KEY,
    name       varchar     not null,
    email      citext      not null unique,
    pw         bytea       not null,
    uid        varchar     not null,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);

CREATE TABLE
    IF NOT EXISTS
    refresh_tokens
(
    id         SERIAL PRIMARY KEY,
    user_uid   varchar     not null,
    token      varchar     not null,
    remember   boolean              DEFAULT false,
    expires    timestamptz not null,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);

CREATE UNIQUE INDEX IF NOT EXISTS users_unique_lower_email_idx ON users (lower(email));