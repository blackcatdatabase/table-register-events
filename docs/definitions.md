# register_events

Registration related events (success/failure).

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| id | BIGINT | NO |  | Surrogate primary key. |
| ip_hash | BYTEA | YES |  | Hashed client IP. |
| ip_hash_key_version | VARCHAR(64) | YES |  | Key version for ip_hash. |
| meta | JSONB | YES |  | JSON metadata. |
| occurred_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | When event occurred (UTC). |
| type | TEXT | NO |  | Event type. (enum: register_success, register_failure) |
| user_agent | VARCHAR(1024) | YES |  | Client user agent. |
| user_id | BIGINT | YES |  | User (FK users.id), optional. |

## Engine Details

### mysql

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_reg_ip | ip_hash | INDEX idx_reg_ip (ip_hash) |
| idx_reg_time | occurred_at | INDEX idx_reg_time (occurred_at) |
| idx_reg_type_time | type,occurred_at | INDEX idx_reg_type_time (`type`, occurred_at) |
| idx_reg_user | user_id | INDEX idx_reg_user (user_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_register_user | user_id | users(id) | ON DELETE SET |

### postgres

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_reg_ip | ip_hash | CREATE INDEX IF NOT EXISTS idx_reg_ip ON register_events (ip_hash) |
| idx_reg_time | occurred_at | CREATE INDEX IF NOT EXISTS idx_reg_time ON register_events (occurred_at) |
| idx_reg_type_time | type,occurred_at | CREATE INDEX IF NOT EXISTS idx_reg_type_time ON register_events (type, occurred_at) |
| idx_reg_user | user_id | CREATE INDEX IF NOT EXISTS idx_reg_user ON register_events (user_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_register_user | user_id | users(id) | ON DELETE SET |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_register_events | mysql | algorithm=MERGE, security=INVOKER | [packages\register-events\schema\040_views.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/register-events/schema/040_views.mysql.sql) |
| vw_register_events | postgres |  | [packages\register-events\schema\040_views.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/register-events/schema/040_views.postgres.sql) |
