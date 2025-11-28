-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-11-27T15:13:14Z)
-- engine: mysql
-- table:  register_events

ALTER TABLE register_events ADD CONSTRAINT fk_register_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL;
