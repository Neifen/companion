create table if not exists public.plans
(
    id              SERIAL PRIMARY KEY,
    name            VARCHAR(50) NOT NULL,
    plan_desc       TEXT,
    includes_verses BOOLEAN     NOT NULL DEFAULT false,
    fix_duration    BOOLEAN     NOT NULL DEFAULT false,
    bible_canon     SMALLINT    NOT NULL DEFAULT 0,                         -- for catholic and orthodox bible | defaults to null which is the 'normal' bible
    length          INT         NOT NULL DEFAULT 820847, -- sum of all
    created_at      timestamptz NOT NULL DEFAULT now(),
    updated_at      timestamptz NOT NULL DEFAULT now()
);

create table if not exists static.bible_canons
(
    id             SMALLINT PRIMARY KEY,
    name           VARCHAR(30),
    description    TEXT,
    chapters_table VARCHAR(30),
    verses_table   VARCHAR(30)
);

INSERT INTO static.bible_canons (id, name, description, chapters_table, verses_table)
values (0, 'Protestant Bible',
        ' Bible which contains only the 66 books of the Old and New Testaments without the Apocrypha.',
        'static.chapters', 'static.verses')
ON CONFLICT DO NOTHING;

INSERT INTO public.plans (id, name, plan_desc)
values (0, 'default', 'This is the plan that is shown by default. Is just a canonical plan')
ON CONFLICT DO NOTHING;

create table if not exists public.plans_to_bible
(
    id             BIGSERIAL PRIMARY KEY,
    plan_fk        INT REFERENCES public.plans     NOT NULL,
    chapter_fk     INT2 REFERENCES static.chapters NOT NULL,
    verse_fks      INT[],                                   --optional
    verses         VARCHAR(12),                             --might not be needed
    running_length INT                             NOT NULL -- template for tracker
);

INSERT INTO public.plans_to_bible (id, plan_fk, chapter_fk, running_length)
SELECT id.id as id,
       0     as plan_fk,
       id.id as chapter_fk,
       sum(c.chapter_word_count) over (order by id.id)
FROM generate_series(1, 1189) id
         join static.chapters c on id.id = c.id
WHERE NOT EXISTS (select 1
                  from public.plans_to_bible
                  where id = 1189);

ALTER SEQUENCE plans_to_bible_id_seq RESTART WITH 1189;


create table if not exists public.tracker
(
    id               bigserial primary key,
    user_fk          int                                     NOT NULL REFERENCES public.users,
    plan_to_bible_fk bigint references public.plans_to_bible NOT NULL,
    read             boolean                                 NOT NULL default false,
    read_by          date                                    NOT NULL,
    created_at       timestamptz                             not null default now(),
    updated_at       timestamptz                             not null default now()
);

--todo remove this, only for test
INSERT INTO public.users ("id","name",email,pw,uid,created_at,updated_at) VALUES
    (0, 'Nate','nate@test.ch',decode('F01799B988381AB571305D974AD97AA52CD6A9D0CAB5FB1EDE4639D8CE9BA914','hex'),'de08c80c-c2cf-4e9c-abab-e60ad435fc3c','2025-08-05 13:59:23.680187-04','2025-08-05 13:59:23.680187-04') ON CONFLICT DO NOTHING;

INSERT INTO public.tracker (id, user_fk, plan_to_bible_fk, read_by)
SELECT id.id as id,
       0    as user_fk,
       id.id as plan_to_bible_fk,
       to_date('2024-10-31', 'YYYY-MM-DD') + interval '1' day * (ceil(365::float * pb.running_length / p.length)-1) as read_by
FROM generate_series(1, 1189) id
         join public.plans_to_bible pb on pb.id = id.id
         join public.plans p on pb.plan_fk = p.id
WHERE NOT EXISTS (select 1
                  from public.tracker
                  where id = 1189);
