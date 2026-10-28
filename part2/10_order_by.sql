-- ORDER BY -> used to put things in ascending and descending order
-- ASC -> to put things in ascending order
-- DESC -> to put things in descending order

-- Example: Using price ASC
SELECT name AS product, price, description
FROM intermediate.products
ORDER BY price ASC;

-- Example: Using price DESC
SELECT name AS product, price, description
FROM intermediate.products
ORDER BY price DESC;

-- Using ASC and DESC at same time
SELECT name AS product, category, price, description
FROM intermediate.products
ORDER BY category ASC, price DESC;