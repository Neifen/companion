CREATE SCHEMA IF NOT EXISTS tracking;

-- used to be user_to_tracker
CREATE TABLE IF NOT EXISTS tracking.trackers(
    id bigserial PRIMARY KEY,
    user_fk uuid NOT NULL REFERENCES auth.users ON DELETE CASCADE,
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

