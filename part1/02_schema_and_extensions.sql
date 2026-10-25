-- db -> schemas -> table -> rows

-- if not exists is used to prevent error if schema is already created
CREATE SCHEMA IF NOT EXISTS basics;

-- to create extension
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- query
SELECT schema_name
FROM information_schema.schemata
ORDER BY schema_name;