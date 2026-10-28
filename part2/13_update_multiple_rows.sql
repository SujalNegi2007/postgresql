
SELECT name AS product, price, category
FROM intermediate.products
ORDER BY category;

-- Increasing price by 10%
UPDATE intermediate.products
SET price = ROUND(price*1.1, 2)
WHERE category = 'stationery';

SELECT name AS product, price, category
FROM intermediate.products
ORDER BY category;

UPDATE intermediate.products
SET is_active = false
WHERE stock = 0;

SELECT name AS product, price, is_active
FROM intermediate.products
WHERE is_active = false;