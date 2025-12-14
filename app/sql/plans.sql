CREATE SCHEMA IF NOT EXISTS plans;

-- CREATE
CREATE TABLE IF NOT EXISTS plans.plans(
    id serial PRIMARY KEY,
    name varchar(50) NOT NULL,
    plan_desc text,
    includes_verses boolean NOT NULL DEFAULT FALSE,
    fix_duration boolean NOT NULL DEFAULT FALSE,
    bible_canon smallint NOT NULL DEFAULT 0, -- for catholic and orthodox bible | defaults to null which is the 'normal' bible
    length int NOT NULL DEFAULT 820847, -- sum of all
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS plans.bible_plans(
    id bigserial PRIMARY KEY,
    plan_fk int REFERENCES plans.plans NOT NULL,
    chapter_fk int2 REFERENCES static.chapters NOT NULL,
    verse_fks int[], -- optional
    verses varchar(12), -- optional
    length int NOT NULL,
    running_length int NOT NULL -- template for tracker
);

-- INSERTS
INSERT INTO plans.plans(id, name, plan_desc)
    VALUES (0, 'default', 'This is the plan that is shown by default. Is just a canonical plan')
ON CONFLICT
    DO NOTHING;

INSERT INTO plans.bible_plans(id, plan_fk, chapter_fk, running_length, length)
SELECT
    id.id AS id,
    0 AS plan_fk,
    id.id AS chapter_fk,
    SUM(c.chapter_word_count) OVER (ORDER BY id.id),
    c.chapter_word_count AS length
FROM
    GENERATE_SERIES(1, 1189) id
    JOIN static.chapters c ON id.id = c.id
WHERE
    NOT EXISTS (
        SELECT
            1
        FROM
            plans.bible_plans
        WHERE
            id = 1189);

ALTER SEQUENCE plans.bible_plans_id_seq
    RESTART WITH 1189;

