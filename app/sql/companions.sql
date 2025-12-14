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
    chapter_start_fk int2 NOT NULL REFERENCES static.chapters ON DELETE CASCADE,
    chapter_end_fk int2 NOT NULL REFERENCES static.chapters ON DELETE CASCADE,
    companion_src varchar,
    markup text,
    companion_fk int NOT NULL REFERENCES companions.companions ON DELETE CASCADE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW()
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
    companion_fk bigint NOT NULL REFERENCES companions.companions ON DELETE CASCADE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW()
);

INSERT INTO companions.companions(id, title, author, companion_type, is_default)
VALUES
    (0, 'Test_shared', 'Nate', 'SHARED', FALSE),
(1, 'Wikipedia', 'Nate', 'DEFAULT', TRUE)
ON CONFLICT
    DO NOTHING;

INSERT INTO companions.companion_items(id, chapter_start_fk, chapter_end_fk, companion_src, markup, companion_fk)
VALUES
    (0, 1, 50, NULL, 'This is jus Genesis mate. really realy fun', 0),
(1, 51, 90, NULL, 'Exodus', 0),
(2, 91, 117, NULL, 'Leviticus', 0),
(3, 118, 153, NULL, 'Numbers', 0),
(4, 154, 187, NULL, 'Deuteronomy', 0)
ON CONFLICT
    DO NOTHING;

-- https://unfoldingword.org/sweet-publishing/acts/
INSERT INTO companions.companion_images(id, image_url, src, src_url, caption, companion_item_fk)
VALUES
    (0, 'https://i0.wp.com/filedn.com/lD0GfuMvTstXgqaJfpLL87S/sweet_images/jpg/01/01_Ge_12_07_RG.jpg?ssl=1', 'Jim Padgett, Sweet Publishing', ' http://sweetpublishing.com', 'Map of Abram moving', 0),
(1, 'https://commons.wikimedia.org/wiki/File:Aleppo_Codex_Joshua_1_1.jpg#/media/File:Aleppo_Codex_Joshua_1_1.jpg', 'Wikipedia', NULL, 'Closeup of Aleppo Codex, Joshua 1:1 in Hebrew', 1),
(2, 'https://upload.wikimedia.org/wikipedia/commons/b/b1/Book_of_Exodus_Chapter_14-2_%28Bible_Illustrations_by_Sweet_Media%29.jpg', 'Jim Padgett, Sweet Publishing', ' http://sweetpublishing.com', 'Map of Egypt and Philistia', 1)
ON CONFLICT
    DO NOTHING;

INSERT INTO companions.plan_companions(id, plan_fk, companion_fk)
    VALUES (0, 0, 0)
ON CONFLICT
    DO NOTHING;

SELECT
    SETVAL('companions.companions_id_seq',(
            SELECT
                MAX(id)
            FROM companions.companions));

SELECT
    SETVAL('companions.companion_items_id_seq',(
            SELECT
                MAX(id)
            FROM companions.companion_items));

SELECT
    SETVAL('companions.companion_images_id_seq',(
            SELECT
                MAX(id)
            FROM companions.companion_images));

-- not needed (only value is 0)
--SELECT
--    SETVAL('companions.plan_companions_id_seq',(
--            SELECT
--                MAX(id)
--            FROM companions.plan_companions));
