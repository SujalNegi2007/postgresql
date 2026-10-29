-- Inserting Values into intermediate.products
INSERT INTO intermediate.products (name, category, price, stock, sku, description)
    VALUES
    ('temp', 'temp', 1200, 51, 'temp', NULL);

-- Viewing data of intermediate.products
SELECT name, category, price, stock
FROM intermediate.products; 

-- Deleting data from intermediate.products
DELETE FROM intermediate.products
WHERE sku = 'temp';

-- Viewing data of intermediate.products
SELECT name, category, price, stock
FROM intermediate.products; 