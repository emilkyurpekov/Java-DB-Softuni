ALTER TABLE employees
ADD full_email_address VARCHAR(2342);
SELECT CONCAT(first_name, '.', last_name, '@softuni.bg') AS full_email_address
FROM employees;