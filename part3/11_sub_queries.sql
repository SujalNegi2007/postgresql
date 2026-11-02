
-- One query inside another query
-- runs inner query first then outer query

-- Tell those title that have more than average views
SELECT u.name AS "Author's Name", p.title AS "Post Title", p.views AS "Views"
FROM advance.users AS u INNER JOIN advance.posts AS p ON u.id = p.user_id
WHERE p.views > (
    SELECT AVG(views)
    FROM advance.posts
)
ORDER BY "Views" DESC;