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

