CREATE SCHEMA IF NOT EXISTS tracking;

-- used to be user_to_tracker
CREATE TABLE IF NOT EXISTS tracking.trackers(
    id bigserial PRIMARY KEY,
    user_fk int NOT NULL REFERENCES auth.users ON DELETE CASCADE,
    start_date date NOT NULL,
    end_date date NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW()
);

-- used to be public.tracker
CREATE TABLE IF NOT EXISTS tracking.tasks(
    id bigserial PRIMARY KEY,
    tracker_fk int NOT NULL REFERENCES tracking.trackers ON DELETE CASCADE,
    bible_plan_fk bigint NOT NULL REFERENCES plans.bible_plans,
    read boolean NOT NULL DEFAULT FALSE,
    read_by date NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW()
);

--todo remove this, only for test
INSERT INTO tracking.trackers(id, user_fk, start_date, end_date)
    VALUES (0, 0, TO_DATE('2024-10-31', 'YYYY-MM-DD'), TO_DATE('2025-10-31', 'YYYY-MM-DD'))
ON CONFLICT
    DO NOTHING;

INSERT INTO tracking.tasks(id, tracker_fk, bible_plan_fk, read_by)
SELECT
    id.id AS id,
    0 AS user_fk,
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

