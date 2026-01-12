INSERT INTO auth.users("id", "name", email, pw, uid, created_at, updated_at)
    VALUES (0, 'Nate', 'nate@test.ch', DECODE('F01799B988381AB571305D974AD97AA52CD6A9D0CAB5FB1EDE4639D8CE9BA914', 'hex'), 'de08c80c-c2cf-4e9c-abab-e60ad435fc3c', '2025-08-05 13:59:23.680187-04', '2025-08-05 13:59:23.680187-04')
ON CONFLICT
    DO NOTHING;

