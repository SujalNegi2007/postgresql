-- returning usally returns back the rows imediately after insert, update & delete

INSERT INTO intermediate.products (name, category, price, stock, sku, description)
VALUES
    ('webcam camera', 'electronics', 456.67, 56, 'ELEC-001', NULL)
RETURNING id, name, category, price, stock;

UPDATE intermediate.products
SET stock = (stock * 1.2)
WHERE sku = 'ELEC-001'
RETURNING id, name, category, price, stock;

DELETE FROM intermediate.products
WHERE sku = 'ELEC-001'
RETURNING name, category, price, stock;