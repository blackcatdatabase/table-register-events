-- Auto-generated from schema-map.psd1 (map@1e83bb6)
-- table: register_events
ALTER TABLE register_events ADD CONSTRAINT fk_register_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL;
