-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  register_events

ALTER TABLE register_events ADD CONSTRAINT fk_register_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL;
