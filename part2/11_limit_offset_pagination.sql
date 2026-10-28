-- LIMIT -> shows how many rows you want to show
-- OFFSET -> how many rows we want to skip

SELECT name AS product, price, description
FROM intermediate.products
ORDER BY price
LIMIT 5;

SELECT name AS product, price, description
FROM intermediate.products
ORDER BY price
LIMIT 5 OFFSET 0;

SELECT name AS product, price, description
FROM intermediate.products
ORDER BY price
LIMIT 5 OFFSET 5;
