# Script for database structure creation (from scratch)
DROP DATABASE IF EXISTS WEB_APP;
CREATE DATABASE WEB_APP;
USE WEB_APP;

# TYPES table
CREATE TABLE TYPES (
	id_type INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL
) ENGINE=InnoDB;

# TODOS table
CREATE TABLE TODOS (
	id_todo INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    creation DATETIME DEFAULT CURRENT_TIMESTAMP(),
    id_type INT UNSIGNED,
    CONSTRAINT FK_TODOS_TYPES
		FOREIGN KEY (id_type) REFERENCES TYPES (id_type)
) ENGINE=InnoDB;

# Add some data for TYPES table
INSERT INTO TYPES (name) 
	VALUES ('Diversão'),
           ('Trabalho'),
		   ('Viagem'),
           ('Compras'),
           ('Diversos'),
		   ('Estudos');
           
# Add a test row for TODOS table
INSERT INTO TODOS (title, description, id_type) 
	VALUES 
('Aprender React Native', 'Entender as diferenças entre ReactJS e React Native', 6);

	




