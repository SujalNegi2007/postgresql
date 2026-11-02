# PostgreSQL Practice

SQL files I wrote while learning PostgreSQL. Only for practice, so don't run the DROP commands on a real database.

## Part 1

Database basics, data types and constraints: creating a database, schema and extension, the students table, numeric, boolean, bigint, varchar, JSONB and UUID, NULL vs empty string vs zero, unique, check, default, not null, and primary keys.

## Part 2

Working with data: insert, select, WHERE with AND, OR and NOT, LIKE and ILIKE, IN, BETWEEN, NULL checks, ORDER BY, LIMIT and OFFSET, UPDATE, DELETE and RETURNING.

## Part 3

Relationships and more advanced queries: foreign keys, one-to-many and many-to-many relationships, inner join and left join, table aliases, aggregate functions, GROUP BY and HAVING, COUNT and DISTINCT, sub queries, indexes and transactions.

## Running the files

Run them in order. The first file creates the database:

- psql -U postgres -f part1/01_create_database.sql

Later files need the database name:

- psql -U postgres -d postgresql_part2 -f part2/file-name.sql
- psql -U postgres -d postgresql_part3 -f part3/file-name.sql
