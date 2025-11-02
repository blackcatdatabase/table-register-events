-- Auto-generated from schema-map-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  register_events
CREATE TABLE IF NOT EXISTS register_events (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  user_id BIGINT UNSIGNED NULL,
  `type` ENUM('register_success','register_failure') NOT NULL,
  ip_hash BINARY(32) NULL,
  ip_hash_key_version VARCHAR(64) NULL,
  user_agent VARCHAR(1024) NULL,
  occurred_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  meta JSON NULL,
  INDEX idx_reg_user (user_id),
  INDEX idx_reg_time (occurred_at),
  INDEX idx_reg_type_time (`type`, occurred_at),
  INDEX idx_reg_ip (ip_hash)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
