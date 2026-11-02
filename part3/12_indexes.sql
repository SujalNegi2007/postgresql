-- Concept Only

-- Indexes helps postgres find rows faster
-- SELECT -> speed it up in this process

SELECT *
FROM advance.posts;

-- posts?status=published
SELECT *
FROM advance.posts
WHERE status = 'published';

-- Here idx is index, posts is table and status is column
CREATE INDEX IF NOT EXISTS idx_posts_status ON advance.posts(status);

SELECT *
FROM advance.posts
WHERE status = 'published'
ORDER BY views DESC;

-- Composite Index
CREATE INDEX IF NOT EXISTS idx_posts_status_views ON advance.posts(status, views DESC);

-- /users/:id/posts 
SELECT *
FROM advance.posts AS p
WHERE user_id = (
    SELECT id
    FROM advance.users
    WHERE name = 'Ananya'
);

CREATE INDEX IF NOT EXISTS idx_posts_user_id ON posts(user_id);