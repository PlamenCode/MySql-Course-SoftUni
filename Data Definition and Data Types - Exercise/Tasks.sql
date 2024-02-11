-- 01. Create Tables
CREATE TABLE minions(
		id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
        name VARCHAR(50),
        age INT 
);

CREATE TABLE towns(
		town_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
        name VARCHAR(50) 
);


-- 02. Alter Minions Table
ALTER TABLE minions
ADD town_id INT;

ALTER TABLE minions
ADD CONSTRAINT fk_town_id
FOREIGN KEY(town_id) REFERENCES towns(id);


-- 03. Insert Records in Both Tables
INSERT INTO towns 
VALUES (1,'Sofia'),
		(2, 'Plovdiv'),
        (3,'Varna');

INSERT INTO minions 
VALUES  (1,'Kevin', 22, 1),
		(2, 'Bob', 15, 3),
        (3,'Steward', NUll, 2);


-- 04. Truncate Table Minions
TRUNCATE TABLE minions;


-- 05. Drop All Tables
DROP TABLE minions;
DROP TABLE towns;


-- 06. Create Table People
Create TABLE people(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    picture VARBINARY(2000),
    height FLOAT(2),
    weight FLOAT(2),
    gender CHAR NOT NULL CHECK(gender = 'm' OR gender = 'f'),
    birthdate DATETIME NOT NULL,
	biography text NOT NULL
);

INSERT INTO people
VALUES  (1, 'name1', load_file("C:\Users\ASUS F15\OneDrive\Desktop\important\Документи\pics\3.jpg"), 1.60, 70.00, 'm', '2020-09-14 23:18:13', 'text1'),
		(2, 'name2', load_file("C:\Users\ASUS F15\OneDrive\Desktop\important\Документи\pics\3.jpg"), 1.70, 70.00, 'f', '2020-09-14 23:18:14', 'text2'),
        (3, 'name3', load_file("C:\Users\ASUS F15\OneDrive\Desktop\important\Документи\pics\3.jpg"), 1.80, 75.00, 'm', '2020-09-14 23:18:15', 'text3'),
        (4, 'name4', load_file("C:\Users\ASUS F15\OneDrive\Desktop\important\Документи\pics\3.jpg"), 1.90, 80.00, 'f', '2020-09-14 23:18:16', 'text4'),
        (5, 'name5', load_file("C:\Users\ASUS F15\OneDrive\Desktop\important\Документи\pics\3.jpg"), 1.76, 90.00, 'f', '2020-09-14 23:18:17', 'text5');



-- 07. Create Table Users
Create TABLE users(
	id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30) NOT NULL,
    password VARCHAR(26) NOT NULL,
    profile_picture VARBINARY(900),
    last_login_time DATETIME DEFAULT NOW(),
    is_deleted varchar(5) CHECK(is_deleted = true OR is_deleted = false) DEFAULT false 
);

INSERT INTO users (id, username, password, profile_picture)
VALUES  (1, 'username1', '123456', load_file("C:\Users\ASUS F15\OneDrive\Desktop\important\Документи\pics\3.jpg")),
		(2, 'username2', '123456', load_file("C:\Users\ASUS F15\OneDrive\Desktop\important\Документи\pics\3.jpg")),
        (3, 'username3', '123456', load_file("C:\Users\ASUS F15\OneDrive\Desktop\important\Документи\pics\3.jpg")),
        (4, 'username4', '123456', load_file("C:\Users\ASUS F15\OneDrive\Desktop\important\Документи\pics\3.jpg")),
        (5, 'username5', '123456', load_file("C:\Users\ASUS F15\OneDrive\Desktop\important\Документи\pics\3.jpg"));


-- 08. Change Primary Key
ALTER TABLE users
DROP PRIMARY KEY,
ADD CONSTRAINT pk_users PRIMARY KEY (id, username);


-- 9. Set Default Value of a Field
ALTER TABLE users
MODIFY last_login_time DATETIME DEFAULT NOW();


-- 10. Set Unique Field
ALTER TABLE users MODIFY id INT NOT NULL;
ALTER TABLE users DROP PRIMARY KEY;
ALTER TABLE users MODIFY id INT NOT NULL PRIMARY KEY AUTO_INCREMENT;
ALTER TABLE users ADD CONSTRAINT UNIQUE(username);


-- 14. Basic Select All Fields
SELECT * FROM towns;
SELECT * FROM departments;
SELECT * FROM employees;


-- 15. Basic Select All Fields and Order Them
SELECT * FROM towns ORDER BY name ASC;
SELECT * FROM departments ORDER BY name ASC;
SELECT * FROM employees ORDER BY salary DESC;


-- 16. Basic Select Some Fields
SELECT (name) FROM towns ORDER BY name ASC;
SELECT (name) FROM departments ORDER BY name ASC;
SELECT first_name, last_name, job_title, salary FROM employees ORDER BY salary DESC;


-- 17. Increase Employees Salary
UPDATE employees
SET salary = salary * 1.1;
SELECT (salary) FROM employees;