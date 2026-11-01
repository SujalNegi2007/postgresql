
-- Group By -> creates group of rows
-- Where -> filters normal rows before grouping
-- Having -> filters group by after grouping

-- Find author who has written atleast two posts
SELECT u.name AS "Author's Name", COUNT(p.id) AS "Total Post", SUM(p.views) AS "Total Views"
FROM advance.users AS u LEFT JOIN advance.posts AS p ON u.id = p.user_id
GROUP BY u.id, u.name
HAVING COUNT(p.id) >= 2
ORDER BY "Total Post" DESC;