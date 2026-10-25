-- To create database
CREATE DATABASE IF NOT EXISTS postgresql_part1;
-- To create schema
CREATE SCHEMA IF NOT EXISTS basics;
-- To create expansion
CREATE EXPANSION IF NOT EXISTS pgcrypto;

-- Only For Learning. Do not try with real data.
DROP TABLE IF EXISTS basics.product_basics;

-- To create table in basics schema
CREATE TABLE basics.product_basics (
    -- SERIAL for unique id and primary key means unique for each row
    id SERIAL PRIMARY KEY,
    -- Here VARCHAR is a data type of name and NOT NULL means name value must be present or it will be rejected.
    -- Here 100 signifies maximum length of characters.
    name VARCHAR(100) NOT NULL,
    -- Here TEXT is data type of description.
    description TEXT NOT NULL,
    -- Here DEFAULT 0 means if value not given then 0 will be taken.
    stock INTEGER DEFAULT 0,
    -- For exact decimal values. 10 means no. of digits and 2 means number before decimal point like 9990.45.
    price NUMERIC(10,2) NOT NULL,
    -- Here BIGINT means greater whole number than integer
    total_views BIGINT DEFAULT 0,
    is_active BOOLEAN DEFAULT true,
    -- Here NOW() give current time of when it is used.
    created_at TIMESTAMP DEFAULT NOW()
);

-- queries
INSERT INTO basics.product_basics (name, description, stock, price, total_views, is_active)
VALUES
('Monitor', 'Used for watching TV', 15, 8499.99, 9020002625563, true),
('Mouse', 'Used for scrolling through screen', 15, 459.99, 551625563, true),
('CPU', 'Used for computational power', 7, 9559.49, 996455643, false);

-- getting data
SELECT * 
FROM basics.product_basics
WHERE is_active;