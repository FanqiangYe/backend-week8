DROP TABLE IF EXISTS television;
DROP TABLE IF EXISTS remote_controller;
DROP TABLE IF EXISTS ci_module;
DROP TABLE IF EXISTS wall_bracket;
DROP TABLE IF EXISTS users;

CREATE TABLE users
(
	username varchar(50),
	password varchar(50)
);

CREATE TABLE remote_controller
(
	id int PRIMARY KEY,
 	name varchar(100) NOT NULL,
	brand varchar (50) NOT NULL,
	price double precision NOT NULL,
	current_stock int NOT NULL,
	sold int NOT NULL,
	compatible_with varchar(100),
	battery_type varchar(50)
);

CREATE TABLE ci_module
(
	id int PRIMARY KEY,
 	name varchar(100) NOT NULL,
	brand varchar (50) NOT NULL,
	price double precision NOT NULL,
	current_stock int NOT NULL,
	sold int NOT NULL
);

CREATE TABLE wall_bracket
(
id int PRIMARY KEY,
 	name varchar(100) NOT NULL,
	brand varchar (50) NOT NULL,
	price double precision NOT NULL,
	current_stock int NOT NULL,
	sold int NOT NULL,
	adjustable boolean
);

CREATE TABLE television 
(
	id int PRIMARY KEY,
	name varchar(100) NOT NULL,
	brand varchar (50) NOT NULL,
	price double precision NOT NULL,
	current_stock int NOT NULL,
	sold int NOT NULL,
	type varchar(100),
	available boolean,
	refresh_rate double precision,
	screen_type varchar(100),
	remote_id int,
	cimodule_id int,
	CONSTRAINT fk_remote FOREIGN KEY (remote_id) REFERENCES remote_controller(id),
	CONSTRAINT fk_cimodule FOREIGN KEY (cimodule_id) REFERENCES ci_module(id)
);

INSERT INTO remote_controller (id, name, brand, price, current_stock, sold, compatible_with, battery_type) VALUES (11, 'afstandsbediening', 'Samsung', 15, 100, 0, 'NH3216SMART', 'batterij');

INSERT INTO ci_module (id, name, brand, price, current_stock, sold) VALUES (21, 'module', 'Ziggo', 50, 45, 5); 

INSERT INTO wall_bracket (id, name, brand, price, current_stock, sold, adjustable) VALUES (31, 'muurbeugel', 'Samsung', 30, 100, 100, TRUE);

INSERT INTO television (id, name, brand, price, current_stock, sold, type, available, refresh_rate, screen_type, remote_id, cimodule_id)
VALUES (41, 'tv', 'Samsung', 1000, 89, 11, '43904234', TRUE, 60, 'oled', 11, 21);

SELECT * FROM remote_controller;
SELECT * FROM ci_module;
SELECT * FROM wall_bracket;
SELECT * FROM television;






