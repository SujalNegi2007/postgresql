-- To create schema
CREATE SCHEMA IF NOT EXISTS basics;
--only for learning
DROP TABLE IF EXISTS basics.sales;
-- To create table
CREATE TABLE basics.sales (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    price NUMERIC(100,2) NOT NULL DEFAULT 0,
    created_at TIMESTAMP DEFAULT NOW()
);

-- Queries
INSERT INTO basics.sales (id, title, price)
VALUES
    (1, 'sale1', 200),
    (2, 'sale2', 300),
    -- This will give error as id is a primary key so it is unique for each row
    (1, 'duplicate', 300);
SELECT *
FROM basics.sales
WHERE id = 2;