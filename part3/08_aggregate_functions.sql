
-- Calculates one result from many rows
-- COUNT() -> Counts no. of rows
-- MIM() -> Gets smallest value
-- MAX() -> Gets biggest value
-- AVG() -> Gets average of values
-- SUM() -> Gets sum of values

-- admin dashboard, reports, analytics -> mostly admin panels
-- Count those titles which are published
-- Sum of views
SELECT COUNT(*) AS "Total Posts",
    COUNT(*) FILTER (WHERE status = 'published') AS "Published Posts",
    SUM(views) AS "Total Views",
    AVG(views) AS "Average Views",
    MIN(views) AS "Minimum Views",
    MAX(views) AS "Maximum Views"
FROM advance.posts;
