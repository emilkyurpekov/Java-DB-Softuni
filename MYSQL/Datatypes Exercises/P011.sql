CREATE TABLE directors (
	id INT PRIMARY KEY,
    director_name VARCHAR(20) NOT NULL,
    notes TEXT
);

INSERT INTO directors (id,director_name) values 
(1,'test'), (2,'test'),(3,'test'),(4,'test'),(5,'test');

CREATE TABLE genres (
	id INT PRIMARY KEY,
    genre_name VARCHAR(20) NOT NULL,
    notes TEXT
);

INSERT INTO genres (id,genre_name) values 
(1,'test'), (2,'test'),(3,'test'),(4,'test'),(5,'test');

CREATE TABLE categories (
	id INT PRIMARY KEY,
    category_name VARCHAR(30) NOT NULL,
    notes TEXT
);

INSERT INTO categories (id,category_name) values 
(1,'test'), (2,'test'),(3,'test'),(4,'test'),(5,'test');

CREATE TABLE movies (
	id INT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    director_id INT,
    copyright_year INT,
    length DOUBLE,
    genre_id INT,
    category_id INT,
    rating DOUBLE,
    notes TEXT
);
INSERT INTO movies (id,title) values 
(1,'test'), (2,'test'),(3,'test'),(4,'test'),(5,'test');