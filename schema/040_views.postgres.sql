-- Auto-generated from schema-views-postgres.yaml (map@94ebe6c)
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
