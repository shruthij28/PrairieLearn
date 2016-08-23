CREATE TABLE IF NOT EXISTS test_state_logs (
    id SERIAL PRIMARY KEY,
    date TIMESTAMP WITH TIME ZONE,
    open BOOLEAN,
    test_instance_id INTEGER NOT NULL REFERENCES test_instances ON DELETE CASCADE ON UPDATE CASCADE,
    auth_user_id INTEGER NOT NULL REFERENCES users ON DELETE CASCADE ON UPDATE CASCADE
);