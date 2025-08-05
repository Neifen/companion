create table if not exists public.plans
(
    id              SERIAL PRIMARY KEY,
    name            VARCHAR(20) NOT NULL,
    plan_desc       TEXT,
    includes_verses BOOLEAN     NOT NULL DEFAULT false,
    fix_duration    BOOLEAN     NOT NULL DEFAULT false,
    bible_version   VARCHAR(20),                         -- for catholic and orthodox bible | defaults to null which is the 'normal' bible
    length          INT         NOT NULL DEFAULT 820835, -- sum of all
    created_at      timestamptz NOT NULL DEFAULT now(),
    updated_at      timestamptz NOT NULL DEFAULT now()
);

INSERT INTO public.plans (id, name, plan_desc)
values (0, 'default', 'This is the plan that is shown by default. Is just a canonical plan')
ON CONFLICT DO NOTHING;

create table if not exists public.plans_to_bible
(
    id             BIGSERIAL PRIMARY KEY,
    plan_fk        INT REFERENCES public.plans     NOT NULL,
    chapter_fk     INT2 REFERENCES static.chapters NOT NULL,
    verse_fks      INT[],       --optional
    verses         VARCHAR(12), --might not be needed
    running_length INT                             NOT NULL
);

INSERT INTO public.plans_to_bible (id, plan_fk, chapter_fk, running_length)
SELECT id.id as id,
       0     as plan_fk,
       id.id as chapter_fk,
       sum(c.chapter_word_count) over (order by id.id)
FROM generate_series(1, 1189) id
         join static.chapters c on id.id = c.id;

ALTER SEQUENCE plans_to_bible_id_seq RESTART WITH 1189;


create table if not exists public.tracker
(
    id         serial primary key,
    tracker    varbit,
    user_id    int         NOT NULL REFERENCES public.users,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);

CREATE UNIQUE INDEX IF NOT EXISTS tracker_user_fk ON public.tracker (user_id);

