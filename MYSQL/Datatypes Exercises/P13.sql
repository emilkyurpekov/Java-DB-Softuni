USE soft_uni;
CREATE TABLE towns(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(89)
);

CREATE TABLE adresses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    adress_text TEXT,
    town_id INT,
    FOREIGN KEY (town_id)
        REFERENCES towns (id)
);

CREATE TABLE departments(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(47)
);

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(45),
    middle_name VARCHAR(45),
    last_name VARCHAR(45),
    job_title VARCHAR(47),
    department_id INT,
    hire_date DATE,
    salary DOUBLE,
    address_id INT,
    FOREIGN KEY (department_id)
        REFERENCES departments (id),
    FOREIGN KEY (address_id)
        REFERENCES adresses (id)
);
INSERT INTO towns (name) VALUES ('Sofia'), ('Plovdiv'), ('Varna'), ('Burgas');
INSERT INTO adresses (adress_text, town_id) VALUES ('123 Sofia St', 1), ('456 Plovdiv Ave', 2), ('789 Varna Blvd', 3), ('101 Burgas Rd', 4);
INSERT INTO departments (name) VALUES ('Engineering'), ('Sales'), ('Marketing'), ('Software Development'), ('Quality Assurance');
INSERT INTO employees (first_name, middle_name, last_name, job_title, department_id, hire_date, salary, address_id) 
VALUES 
('Ivan', 'Ivanov', 'Ivanov', '.NET Developer', 4, '2013-01-02', 3500.00, 1),
('Petar', 'Petrov', 'Petrov', 'Senior Engineer', 1, '2004-02-03', 4000.00, 2),
('Maria', 'Petrova', 'Ivanova', 'Intern', 5, '2016-08-28', 525.25, 3),
('Georgi', 'Terziev', 'Ivanov', 'CEO', 2, '2007-09-12', 3000.00, 4),
('Peter', 'Pan', 'Pan', 'Intern', 3, '2016-08-28', 599.88, 1);

/*
• employees (id, first_name, middle_name, last_name, job_title, department_id, hire_date, salary, address_id)
*/