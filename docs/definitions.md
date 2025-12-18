# register_events

Registration related events (success/failure).

## Columns
| Column | Type | Null | Default | Description | Crypto |
| --- | --- | --- | --- | --- | --- |
| id | BIGINT | NO |  | Surrogate primary key. |  |
| user_id | BIGINT | YES |  | User (FK users.id), optional. |  |
| type | mysql: ENUM('register_success','register_failure') / postgres: TEXT | NO |  | Event type. (enum: register_success, register_failure) |  |
| ip_hash | mysql: BINARY(32) / postgres: BYTEA | YES |  | Hashed client IP. | `hmac`<br/>ctx: `db.hmac.register_events.ip_hash`<br/>kv: `ip_hash_key_version` |
| ip_hash_key_version | VARCHAR(64) | YES |  | Key version for ip_hash. | key version for: `ip_hash` |
| user_agent | VARCHAR(1024) | YES |  | Client user agent. |  |
| occurred_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | When event occurred (UTC). |  |
| meta | mysql: JSON / postgres: JSONB | YES |  | JSON metadata. |  |

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
| vw_register_events | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_register_events | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
