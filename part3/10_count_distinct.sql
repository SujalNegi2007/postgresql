
-- Count unique values

-- Count how many unique posts are connected to each tag
SELECT t.name AS "Tag's Name", COUNT(DISTINCT p.id) AS "Total Unique Posts"
FROM advance.post_tags AS pt
    LEFT JOIN advance.tags AS t ON t.id = pt.tag_id
    LEFT JOIN advance.posts AS p ON p.id = pt.post_id
GROUP BY t.name, t.id
ORDER BY "Total Unique Posts" DESC;