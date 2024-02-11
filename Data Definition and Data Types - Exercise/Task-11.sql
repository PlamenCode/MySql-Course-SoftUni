-- 11. Movies Database
CREATE TABLE `directors`(
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`director_name` VARCHAR(50) NOT NULL,
`notes` TEXT
);
INSERT INTO `directors`(`id`,`director_name`, `notes`)
VALUES
('1','Pesho',NULL), 
('2','Ivan',NULL), 
('3','Gosho',NULL), 
('4','Tapata',NULL), 
('5','Ali',NULL) 
;
 
CREATE TABLE `genres`(
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`genre_name` VARCHAR(50) NOT NULL,
`notes` TEXT
);
 
INSERT INTO `genres` (`id`, `genre_name`, `notes`)
VALUES
('1','Parody',NULL),
('2','Comedy',NULL),
('3','Drama',NULL),
('4','Action',NULL),
('5','Animation',NULL)
;
 
CREATE TABLE `categories`(
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`category_name` VARCHAR(50) NOT NULL,
`notes` TEXT
);
 
INSERT INTO `categories` (`id`, `category_name`, `notes`)
VALUES
('1', '+0', NULL),
('2', '+6', NULL),
('3', '+12', NULL),
('4', '+16', NULL),
('5', '+18', NULL)
;
 
CREATE TABLE `movies`(
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`title` VARCHAR(50) NOT NULL,
`director_id` INT,
`copyright_year` YEAR,
`LENGTH` TIME,
`genre_id` INT,
`category_id` INT,
`rating` DECIMAL(2,1),
`notes` TEXT
);
 
INSERT INTO `movies`(`id`, `title`, `director_id`, `copyright_year`,`LENGTH`, `genre_id`,`category_id`, `rating`, `notes`)
VALUES
('1', 'No comment', '1', '1991', '00:05:00', '1','1', NULL, NULL),
('2', 'No comment', '2', '1992', '00:04:00', '2','5', NULL, NULL),
('3', 'No comment', '3', '1993', '00:03:00', '5','4', NULL, NULL),
('4', 'No comment', '4', '1994', '00:02:00', '4', '3', NULL, NULL),
('5', 'No comment', '4', '1995', '00:01:00', '3','2', NULL, NULL)
;
