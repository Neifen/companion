INSERT INTO auth.users("id", "name", email, pw, created_at, updated_at) 
    VALUES ('550e8400-e29b-41d4-a716-446655440000', 'Nate', 'nate@test.ch', convert_to('$2a$10$.7CkKTmfC4ckelXnSQZcBOMA9Yte3rMntFlQ6kxanx6VrZ1H/oUOG', 'UTF8'), '2025-08-05 13:59:23.680187-04', '2025-08-05 13:59:23.680187-04')
ON CONFLICT
    DO NOTHING;

