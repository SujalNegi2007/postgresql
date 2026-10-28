-- NULL -> missing value
-- dont use = null for checking
-- IS NULL
-- IS NOT NULL

-- Example: using is null in description
SELECT name AS product, price, description
FROM intermediate.products
WHERE description IS NULL;

-- Example: using is not null in description
SELECT name AS product, price, description
FROM intermediate.products
WHERE description IS NOT NULL;

-- Example: using is not null and one more condition in description
SELECT name AS product, price, description, is_active
FROM intermediate.products
WHERE is_active = true AND description IS NOT NULL;