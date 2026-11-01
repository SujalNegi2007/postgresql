
-- one parent row can have multiple child rows.

-- user2(rahul) can have 10 posts, 1,2,..,10
-- so one user can write many posts but one post will always belong to one user
-- so user -> parent table, post -> child table

-- advance.posts.user_id -> advance.users.id    
-- -> here user.id is original user id
-- -> here post.user_id stores the original user id inside the post table

-- Show all posts with their authors
SELECT advance.users.name AS author_name, advance.posts.title, advance.posts.status
FROM advance.users INNER JOIN advance.posts ON advance.users.id = advance.posts.user_id
ORDER BY advance.users.name, advance.posts.title;