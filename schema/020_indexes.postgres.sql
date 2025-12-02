-- Auto-generated from schema-map-postgres.yaml (map@94ebe6c)
-- engine: postgres
-- table:  register_events

CREATE INDEX IF NOT EXISTS idx_reg_user ON register_events (user_id);

CREATE INDEX IF NOT EXISTS idx_reg_time ON register_events (occurred_at);

CREATE INDEX IF NOT EXISTS idx_reg_type_time ON register_events (type, occurred_at);

CREATE INDEX IF NOT EXISTS idx_reg_ip ON register_events (ip_hash);
