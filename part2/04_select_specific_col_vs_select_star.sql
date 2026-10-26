-- select *   -> selects every column on that table
-- select col -> selects specific col

-- Example for select *
SELECT * FROM intermediate.products;
-- Example for select col or select cols
SELECT name, category, price, stock FROM intermediate.products;
-- AS creates alias for column
SELECT 
    name AS products, 
    price AS selling_price, 
    stock AS available_quantity
FROM intermediate.products;