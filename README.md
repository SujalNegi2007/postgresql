# PostgreSQL Practice

SQL files I wrote while learning PostgreSQL. Only for practice, so don't run the DROP commands on a real database.

## Part 1

Database basics, data types and constraints.

- 01_create_database.sql - create a database
- 02_schema_and_extensions.sql - create a schema and an extension, and list schemas
- 03_students_table.sql - create a students table, with insert and values
- 04_data_types.sql - numeric, boolean, bigint and varchar
- 05_other_data_types.sql - JSONB and UUID
- 06_null_empty_string_zero.sql - the difference between NULL, empty string and zero
- 07_constraints.sql - unique, check, default and not null
- 08_primary_keys.sql - primary keys and the error from duplicate values

## Part 2

Inserting and querying data.

- 01_sql_base_file.sql - base file to set up the tables
- 02_insert_single_row.sql - insert one row
- 03_insert_multiple_rows.sql - insert many rows at once
- 04_select_specific_col_vs_select_star.sql - select specific columns vs select *
- 05_where_basic_filter.sql - basic WHERE filters
- 06_and_or_not_filters.sql - combine filters with AND, OR and NOT

## Running the files

Run them in order. The first file creates the database:

- psql -U postgres -f part1/01_create_database.sql

Later files need the database name:

- psql -U postgres -d postgresql_part1 -f part2/06_and_or_not_filters.sql
