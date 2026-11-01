-- foregin key is a col that points to the primary key of another table.

-- advance.users.id -> parent key
-- advance.post.user_id -> foreign key
-- every post we create must belong to an existing user

SELECT id, name
FROM advance.users;

SELECT id, user_id, title
FROM advance.posts;