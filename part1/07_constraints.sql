-- To create SCHEMA
CREATE SCHEMA IF NOT EXISTS basics;
-- Never do this! Only for learning
DROP TABLE IF EXISTS basics.accounts;

-- Learning
---- NOT NULL, UNIQUE, CHECK, DEFAULT

-- To create a table
CREATE TABLE basics.accounts (
    id SERIAL PRIMARY KEY,
    -- NOT NULL means it must not be NOT NULL or else it will be rejected
    first_name TEXT NOT NULL,
    last_name TEXT,
    -- UUID
    account_no UUID DEFAULT gen_random_uuid(),
    balance NUMERIC(100,2),
    -- UNIQUE means different for each row
    email TEXT NOT NULL UNIQUE,
    -- Here CHECK is used to only allow those whose age is more than or equal to 18
    age INTEGER CHECK (age >= 18),
    -- Used DEFAULT as when value not present use true
    is_active BOOLEAN DEFAULT true,
    created_at TIMESTAMP DEFAULT NOW()
);

-- Queries
INSERT INTO basics.accounts (first_name, last_name, balance, email, age, is_active)
VALUES
    ('Sujal', 'Negi', 15000, 'sujalnegi@gmail.com', 45, true),
    ('Hari', 'Singh', 35962.62, 'harisingh@gmail.com', 29, false),
    -- This line will give error as it will fail check of age being equal to or more than 18
    ('Ravi', 'Pandey', 38521.96, 'ravipandey@gamil.com', 17, true),
    -- This will also give error because of same email
    ('Shanti', 'Negi', 895621.32, 'shantinegi@gmail.com', 26, true),
    ('bot', 'bot', 0, 'shantinegi@gmail.com', 35, true);

SELECT *
FROM basics.accounts
;