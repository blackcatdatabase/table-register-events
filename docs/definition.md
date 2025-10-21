<!-- Auto-generated from schema-map.psd1 @ 1e83bb6 (2025-10-21T10:18:36+02:00) -->
# Definition – register_events

Registration related events (success/failure).

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT UNSIGNED | — | — | Surrogate primary key. |  |
| user_id | BIGINT UNSIGNED | YES | — | User (FK users.id), optional. |  |
| type | ENUM('register_success','register_failure') | NO | — | Event type. | enum: register_success, register_failure |
| ip_hash | BINARY(32) | YES | — | Hashed client IP. | PII: hashed |
| ip_hash_key_version | VARCHAR(64) | YES | — | Key version for ip_hash. |  |
| user_agent | VARCHAR(1024) | YES | — | Client user agent. |  |
| occurred_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | When event occurred (UTC). |  |
| meta | JSON | YES | — | JSON metadata. |  |
