
-- Aliases helps making our queries more shorter and easier to read and understand.

-- Instead of writing posts.title, we write p.title
-- Instead of writing users.title, we write u.title

-- Suprise test.
-- Write a command to get post title, post status, user name and comment body
SELECT advance.posts.title AS "Title", 
    advance.posts.status AS "Status", 
    advance.users.name AS "Creator's Name",
    advance.comments.body AS "Comment"
FROM advance.users INNER JOIN advance.posts ON advance.users.id = advance.posts.user_id
LEFT JOIN advance.comments ON advance.comments.post_id = advance.posts.id
ORDER BY advance.users.name;

-- Writing same code in aliases format
SELECT p.title AS "Title", 
    p.status AS "Status", 
    u.name AS "Creator's Name",
    c.body AS "Comment"
FROM advance.users AS u 
INNER JOIN advance.posts AS p ON u.id = p.user_id
LEFT JOIN advance.comments AS c ON c.post_id = p.id
ORDER BY u.name;