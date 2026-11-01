
-- inner join only returns only matching rows from both table


SELECT advance.users.name AS author_name, advance.posts.title AS post_title, advance.posts.status, advance.posts.views
FROM advance.users INNER JOIN advance.posts ON advance.users.id = advance.posts.user_id
WHERE advance.posts.status = 'published'
ORDER BY advance.posts.views DESC;