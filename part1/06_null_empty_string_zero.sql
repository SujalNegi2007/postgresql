-- To create database
CREATE DATABASE IF NOT EXISTS postgresql_part1;
-- To create schema
CREATE SCHEMA IF NOT EXISTS basics;
-- Never do this! For learning purpose only
DROP TABLE IF EXISTS basics.value_examples;

-- New Concepts:
---- Null         -> unknown/Missing Value
---- Empty String -> known string value but it contains no characters
---- Zero         -> actual numeric value of 0

-- To create a table
CREATE TABLE basics.value_examples (
    -- UUID
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    first_name TEXT NOT NULL,
    last_name TEXT,
    post TEXT NOT NULL,
    salary NUMERIC(100,2),
    age INTEGER,
    created_at TIMESTAMP DEFAULT NOW()
);

-- Queries
INSERT INTO basics.value_examples (first_name, last_name, post, salary, age)
VALUES
    (
        -- Here last_name is null
        'Sujal', NULL, 'Junior MLOPS Engineer', 230000.00, 19
    ),
    (
        -- Here salary is explicitly 0
        'Hemant', 'Raj', 'Intern', 0, 17
    ),
    (
        -- Here post is empty string
        'Ravi', 'Singh', '', 150000.00, 22
    );

-- To only print those rows whose last_name is null
SELECT * 
FROM basics.value_examples
WHERE last_name IS NULL;
-- To only print those rows whose post is empty string
SELECT *
FROM basics.value_examples
WHERE post = '';
-- To only print those rows whose salary is zero
SELECT *
FROM basics.value_examples
WHERE salary = 0;