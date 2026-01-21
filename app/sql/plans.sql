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
    verses varchar(40), -- optional
    length int NOT NULL,
    running_length int NOT NULL -- template for tracker
);

