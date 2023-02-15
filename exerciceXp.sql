-- Database: public

-- DROP DATABASE IF EXISTS public;

CREATE DATABASE public
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

-- Database: public

CREATE TABLE items(
	id serial primary key,
 	libelle varchar not null,
	prix numeric not null
);

CREATE TABLE customers(
	id serial primary key,
	name varchar not null,
	firstname varchar not null
);


INSERT INTO items(libelle, prix)
VALUES
	('Petit bureau', 100),
	('Grand bureau', 300),
	('Ventilateur', 80);
	
	
INSERT INTO customers(name, firstname)
VALUES
	('Greg', 'Jones'),
	('Sandra', 'Jones'),
	('Scott', 'Scott'),
	('Trevor', 'Vert'),
	('Mélanie', 'Johnson');
	
SELECT * FROM items;

SELECT * FROM items WHERE prix > 80;

SELECT * FROM items WHERE prix <= 300;

SELECT * FROM customers WHERE name = 'Smith';

SELECT * FROM customers WHERE name = 'Jones';

SELECT * FROM customers WHERE firstname = 'Scott';