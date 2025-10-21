-- Auto-generated from schema-map.psd1 on 2025-10-21T02:32:05
-- table: register_events
ALTER TABLE register_events ADD CONSTRAINT fk_register_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL;
