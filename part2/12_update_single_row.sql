
SELECT name AS product, price, sku
FROM intermediate.products
WHERE sku = 'ELEC-KEY-001';

-- UPDATE, SET
UPDATE intermediate.products
SET price = 2799.09
WHERE sku = 'ELEC-KEY-001'

SELECT name AS product, price, sku
FROM intermediate.products
WHERE sku = 'ELEC-KEY-001';