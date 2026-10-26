-- AND -> every condition must be true
-- OR  -> atleast one condition must be true
-- NOT -> Reverse/exclude a condition


-- Products needs to be electronic and greater than 1000
SELECT name AS product, category, price
FROM intermediate.products
WHERE category = 'electronics' AND price > 1000;

-- Products needs to be electronic or furniture
SELECT name AS products, category, price
FROM intermediate.products
WHERE category = 'electronics' OR category = 'furniture';
-- we can also use WHERE category IN ('electronics', 'furniture');

-- Products that are not stationery
SELECT name AS products, category, price
FROM intermediate.products
WHERE NOT category = 'stationery';

-- products that electronics or stationery and stock > 0
SELECT name AS products, category, price, stock
FROM intermediate.products
WHERE (category = 'electronics' OR category = 'furniture')
    AND stock > 0;

-- products that are active and price is less than 1000 or stock greater than eqaul to 100
SELECT name AS products, category, price, stock, is_active
FROM intermediate.products
WHERE is_active AND (price < 1000 OR stock >= 100);