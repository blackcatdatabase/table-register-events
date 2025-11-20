<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – register_events

Registration related events (success/failure).

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| user_id | BIGINT | YES | — | User (FK users.id), optional. |  |
| type | TEXT | NO | — | Event type. | enum: register_success, register_failure |
| ip_hash | BYTEA | YES | — | Hashed client IP. | PII: hashed |
| ip_hash_key_version | VARCHAR(64) | YES | — | Key version for ip_hash. |  |
| user_agent | VARCHAR(1024) | YES | — | Client user agent. |  |
| occurred_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | When event occurred (UTC). |  |
| meta | JSONB | YES | — | JSON metadata. |  |