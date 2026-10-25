CREATE DATABASE IF NOT EXISTS postgresql_part1;
CREATE SCHEMA IF NOT EXISTS basics;
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- only for learning purpose
DROP TABLE IF EXISTS basics.students;

-- Creating students table
CREATE TABLE basics.students (
    -- Here serial generates 1 then 2 then 3 and so on..
    -- Here PRIMARY KEY means that id is unique for each row.
    id SERIAL PRIMARY KEY,
    -- Here text means string
    -- not null means this column is required means postgres will reject this name value if it is not present
    name TEXT NOT NULL,
    -- Here unique means it will be unique for each row
    email TEXT NOT NULL UNIQUE,
    -- Here Integer means age is integer
    -- Check only allows those whoes age is more than or equal to 18 year.
    age INTEGER CHECK (age >= 18),
    -- Here Timestamp stores date and time format
    -- default means if you don't give any value then it will take by default
    created_at TIMESTAMP DEFAULT NOW()
);

-- Now inserting data into table
INSERT INTO basics.students (name, email, age)
VALUES
('sujal', 'sujal@gmail.com', 20),
('ravi', 'ravi@gmail.com', 19),
('sonum', 'sonum@gmail.com', 35);