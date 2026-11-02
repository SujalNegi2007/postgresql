
-- Multiple SQL statements run as one safe unit

-- placing order
-- reduce stock of the ordered product
-- create payment records
-- transfering money
-- creating user records with related profile data

BEGIN;

UPDATE advance.posts
SET status = 'published'
WHERE title = 'Indexes For Beginners' AND status = 'draft';

UPDATE advance.posts
SET views = views + 50
WHERE title = 'Indexes For Beginners';

SELECT title, views, status
FROM advance.posts
WHERE title = 'Indexes For Beginners';

COMMIT;