INSERT INTO intermediate.products (name, category, price, stock, is_active, sku, description)
VALUES 
    ('Laptop Stand', 'electronics', 1000.00, 153, TRUE, 'STAT-NOT-005', 'Ruled notebook for daily notes');
SELECT *
FROM intermediate.products
WHERE sku = 'STAT-NOT-005';
