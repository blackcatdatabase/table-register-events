-- Auto-generated from schema-map-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  register_events
ALTER TABLE register_events ADD CONSTRAINT fk_register_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL;
