SELECT name, price, category
FROM intermediate.products
WHERE category = 'electronics';

-- Finding products whose price is greater than 2000
SELECT name AS product, price, category
FROM intermediate.products
WHERE price >= 2000;

-- Finding products which are not active
SELECT name AS product, price, category, is_active
FROM intermediate.products
WHERE NOT is_active;