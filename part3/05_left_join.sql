
-- left join keeps keeps all rows from left table
-- if right table has matching data, postgreSQL is going to include that
-- If it don't have any matching data, it returns null

-- posts table -> left table
-- comments table -> right table

-- because not every post is going to have comments
-- some post will have 100 comments and some will have 0

-- Queries that show all our posts including those that do not have any comments

SELECT advance.posts.title AS post_title, advance.comments.body AS comment_body
FROM advance.posts LEFT JOIN advance.comments ON advance.comments.post_id = advance.posts.id
ORDER BY advance.posts.title;