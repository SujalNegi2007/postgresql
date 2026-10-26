INSERT INTO intermediate.products (name, category, price, stock, is_active, sku, description)
VALUES 
    ('Laptop Model 1', 'electronics', 1200.00, 132, TRUE, 'LAP-NOT-001', 'Ruled notebook for daily notes'),
    ('Laptop Model 2', 'electronics', 1650.00, 125, TRUE, 'LAP-NOT-002', 'Ruled notebook for daily notes'),
    ('Laptop Model 3', 'electronics', 1985.60, 103, TRUE, 'LAP-NOT-003', 'Ruled notebook for daily notes'),
    ('Laptop Model 4', 'electronics', 2899.99, 12, TRUE, 'LAP-NOT-004', 'Ruled notebook for daily notes');
SELECT *
FROM intermediate.products
WHERE sku IN ('LAP-NOT-001', 'LAP-NOT-003');