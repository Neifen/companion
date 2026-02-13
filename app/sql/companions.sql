CREATE SCHEMA IF NOT EXISTS companions;

CREATE TABLE IF NOT EXISTS companions.companions(
    id serial PRIMARY KEY,
    title varchar,
    author varchar,
    companion_type varchar, -- PRIVATE (only for one plan) / SHARED (someone created it for everyone) / DEFAULT (these one are in there by default)
    is_default boolean, -- should make query easier
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS companions.companion_items(
    id bigserial PRIMARY KEY,
    book_fk int2, --todo: maybe this should be a table? REFERENCES static.books or something
    chapter_start_fk int2 REFERENCES static.chapters ON DELETE CASCADE,
    chapter_end_fk int2 REFERENCES static.chapters ON DELETE CASCADE,
    companion_src varchar,
    markup text,
    companion_fk int NOT NULL REFERENCES companions.companions ON DELETE CASCADE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT chk_chapters_or_book_not_null CHECK (book_fk IS NOT NULL or (chapter_start_fk IS NOT NULL and chapter_end_fk IS NOT NULL))
);

CREATE TABLE IF NOT EXISTS companions.companion_images(
    id bigserial PRIMARY KEY,
    image_url varchar NOT NULL,
    src varchar,
    src_url varchar,
    caption text,
    companion_item_fk bigint NOT NULL REFERENCES companions.companion_items ON DELETE CASCADE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS companions.plan_companions(
    id bigserial PRIMARY KEY,
    plan_fk int NOT NULL REFERENCES plans.plans ON DELETE CASCADE,
    companion_fk int NOT NULL REFERENCES companions.companions ON DELETE CASCADE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW()
);

