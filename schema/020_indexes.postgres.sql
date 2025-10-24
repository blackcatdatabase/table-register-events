-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-10-24T09:46:38Z)
-- engine: postgres
-- table:  register_events
CREATE INDEX idx_reg_user ON register_events (user_id);

CREATE INDEX idx_reg_time ON register_events (occurred_at);

CREATE INDEX idx_reg_type_time ON register_events (type, occurred_at);

CREATE INDEX idx_reg_ip ON register_events (ip_hash);
