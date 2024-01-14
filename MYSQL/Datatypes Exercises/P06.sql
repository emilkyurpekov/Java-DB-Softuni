CREATE TABLE people(
	id INT PRIMARY KEY auto_increment,
    name varchar(2000) NOT NULL,
    picture BLOB,
    height DOUBLE(10, 2),
    weight DOUBLE(10, 2),
    gender CHAR(1) NOT NULL,
    birthdate DATE NOT NULL,
    biography text
);
INSERT INTO people(name,gender, birthdate)
VALUES('test1', 'm', DATE(NOW())),
('test2', 'f', DATE(NOW())),
('test3', 'm', DATE(NOW())),
('test4', 'f', DATE(NOW())),
('test5', 'm', DATE(NOW()));