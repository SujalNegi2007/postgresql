-- LIKE -> case sensitive pattern recogination
-- ILIKE -> case insensitive pattern recogination
-- % -> means any no. of characters
-- _ -> means no. of characters as same as no. of _

SELECT *
FROM intermediate.products
-- Here % means anything can come after Wireless and like means it must be Wireless not wireless
WHERE name LIKE 'Wireless%';

SELECT *
FROM intermediate.products
-- Here % means anything can come after Wireless and ilike means it can be Wireless or wireleSS
WHERE name ILIKE '%WIRELESS%';

-- another example of ILIKE and %
SELECT name, category, price
FROM intermediate.products
WHERE name ILIKE '%desk%';

-- another example of ILIKE , % and OR
SELECT name, category, price
FROM intermediate.products
WHERE name ILIKE '%DESK%' OR name ILIKE '%wireless%';