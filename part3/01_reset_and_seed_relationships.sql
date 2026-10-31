-- Create postgresql_part3 database
CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE SCHEMA IF NOT EXISTS advance;

-- Only for learning
DROP TABLE IF EXISTS advance.post_tags;
DROP TABLE IF EXISTS advance.tags;
DROP TABLE IF EXISTS advance.comments;
DROP TABLE IF EXISTS advance.posts;
DROP TABLE IF EXISTS advance.users;

-- Creating tables
CREATE TABLE advance.users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL
);
CREATE TABLE advance.posts (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES advance.users(id),
    title TEXT NOT NULL,
    status TEXT NOT NULL DEFAULT 'draft' CHECK (status IN ('draft', 'published')),
    views INTEGER NOT NULL DEFAULT 0 CHECK (views >= 0)
);
CREATE TABLE advance.comments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    post_id UUID NOT NULL REFERENCES advance.posts(id),
    body TEXT NOT NULL
);
CREATE TABLE advance.tags (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL UNIQUE
);
CREATE TABLE advance.post_tags (
    post_id UUID NOT NULL REFERENCES advance.posts(id),
    tag_id UUID NOT NULL REFERENCES advance.tags(id),
    PRIMARY KEY (post_id, tag_id)
);
INSERT INTO advance.users (name)
VALUES
    ('Ananya'), ('Rahul');

-- Posts
INSERT INTO advance.posts (user_id, title, status, views)
SELECT id, 'PostgreSQL Joins Explained', 'published', 100
FROM advance.users
WHERE name = 'Ananya';

INSERT INTO advance.posts (user_id, title, status, views)
SELECT id, 'Indexes For Beginners', 'draft', 40
FROM advance.users
WHERE name = 'Ananya';

INSERT INTO advance.posts (user_id, title, status, views)
SELECT id, 'Backend APIs with PostgreSQL', 'published', 180
FROM advance.users
WHERE name = 'Rahul';

-- Comments
INSERT INTO advance.comments (post_id, body)
SELECT id, 'Very Clear Explanation'
FROM advance.posts
WHERE title = 'PostgreSQL Joins Explained';

INSERT INTO advance.comments (post_id, body)
SELECT id, 'Please Add More Examples.'
FROM advance.posts
WHERE title = 'Backend APIs with PostgreSQL';

-- Tags
INSERT INTO advance.tags (name)
VALUES
    ('sql'), ('backend');

-- Post Tags
INSERT INTO advance.post_tags (post_id, tag_id)
SELECT p.id, t.id
FROM advance.posts p, advance.tags t
WHERE p.title = 'PostgreSQL Joins Explained' AND t.name = 'sql';

INSERT INTO advance.post_tags (post_id, tag_id)
SELECT p.id, t.id
FROM advance.posts p, advance.tags t
WHERE p.title = 'Indexes For Beginners' AND t.name = 'sql';

INSERT INTO advance.post_tags (post_id, tag_id)
SELECT p.id, t.id
FROM advance.posts p, advance.tags t
WHERE p.title = 'Backend APIs with PostgreSQL' AND t.name = 'backend';

SELECT 'Part 3 reduced database reset and sample data inserted successfully' AS message;