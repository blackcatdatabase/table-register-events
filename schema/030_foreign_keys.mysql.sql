-- Auto-generated from schema-map-mysql.psd1 (map@734a489)
-- engine: mysql
-- table:  register_events
ALTER TABLE register_events ADD CONSTRAINT fk_register_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL;
