--todo remove this, only for test
INSERT INTO tracking.trackers(id, user_fk, start_date, end_date)
    VALUES (0, '550e8400-e29b-41d4-a716-446655440000', TO_DATE('2024-10-31', 'YYYY-MM-DD'), TO_DATE('2025-10-31', 'YYYY-MM-DD'))
ON CONFLICT
    DO NOTHING;

INSERT INTO tracking.tasks(id, tracker_fk, bible_plan_fk, read_by)
SELECT
    id.id AS id,
    0 AS tracker_fk,
    id.id AS bible_plan_fk,
    TO_DATE('2024-10-31', 'YYYY-MM-DD') + interval '1' day *(CEIL(365::float * bp.running_length / p.length) - 1) AS read_by
FROM
    GENERATE_SERIES(1, 1189) id
    JOIN plans.bible_plans bp ON bp.id = id.id
    JOIN plans.plans p ON bp.plan_fk = p.id
WHERE
    NOT EXISTS (
        SELECT
            1
        FROM
            tracking.tasks
        WHERE
            id = 1189);

SELECT
    SETVAL('tracking.tasks_id_seq',(
            SELECT
                MAX(id)
            FROM tracking.tasks));

