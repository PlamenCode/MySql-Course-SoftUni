-- 01. Create Tables
CREATE TABLE employees(
	id INT PRIMARY KEY AUTO_INCREMENT,
  	first_name VARCHAR(50) NOT NULL,
  	last_name VARCHAR(50) NOT NULL
);

CREATE TABLE categories(
	id INT PRIMARY KEY AUTO_INCREMENT,
  	name VARCHAR(50) NOT NULL
);

CREATE TABLE products(
	id INT PRIMARY KEY AUTO_INCREMENT,
  	name VARCHAR(50) NOT NULL,
  	category_id INT NOT NULL
);


-- 02. Insert Data in Tables
INSERT INTO employees (first_name, last_name)
VALUES  ('fname', 'lname'),
		('fname2', 'lname2'),
		('fname3', 'lname3');


-- 03. Alter Tables
ALTER TABLE employees
ADD COLUMN middle_name VARCHAR(50);


-- 04. Adding Constraints
ALTER TABLE products
ADD CONSTRAINT fk_category_id
FOREIGN KEY(category_id) REFERENCES categories(id);


-- 05. Modifying Columns
ALTER TABLE employees
MODIFY middle_name VARCHAR(100);
