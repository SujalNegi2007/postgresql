-- IN -> value must match with one item from list
-- NOT IN -> value must not match with any item from list
-- BETWEEN -> value must lie inside the range

-- Example: Applying IN to category
SELECT name AS product, category, price, stock
FROM intermediate.products
WHERE category IN ('electronics', 'stationery');

-- Example: Applying NOT IN to category
SELECT name AS product, category, price, stock
FROM intermediate.products
WHERE category NOT IN ('electronics', 'stationery');

-- Example: Applying BETWEEN to price
SELECT name AS product, category, price, stock
FROM intermediate.products
WHERE price BETWEEN 100 AND 2000;

-- Example: Applying IN to category and BETWEEN to price
SELECT name AS product, category, price, stock
FROM intermediate.products
WHERE category IN ('electronics', 'stationery')
    AND (price BETWEEN 100 and 1500);

