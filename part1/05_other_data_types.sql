-- To create database
CREATE DATABASE IF NOT EXISTS postgresql_part1;
-- To create schema
CREATE SCHEMA IF NOT EXISTS basics;
-- To create extension
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- Warning! Only For Learning
DROP TABLE IF EXISTS basics.app_events;

-- To create table
CREATE TABLE basics.app_events (
    -- UUID
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    event_name TEXT NOT NULL,
    -- JSONB
    metadata JSONB DEFAULT '{}'::jsonb,
    create_at TIMESTAMP DEFAULT NOW()
);

-- Queries
INSERT INTO basics.app_events (event_name, metadata)
VALUES
('Sign_Up', '{"Browser":"Chrome"}'),
('Sign_In', '{"user":"Sujal"}');

-- SELECT *
-- FROM basics.app_events;

SELECT event_name, metadata ->> 'Browser' AS broswer
FROM basics.app_events
WHERE metadata ? 'Browser';