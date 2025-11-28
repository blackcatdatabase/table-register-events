-- Auto-generated from schema-views-postgres.psd1 (map@mtime:2025-11-27T15:36:13Z)
-- engine: postgres
-- table:  register_events

-- Contract view for [register_events]
CREATE OR REPLACE VIEW vw_register_events AS
SELECT
  id,
  user_id,
  type,
  ip_hash,
  UPPER(encode(ip_hash,'hex')) AS ip_hash_hex,
  ip_hash_key_version,
  user_agent,
  occurred_at,
  meta
FROM register_events;
