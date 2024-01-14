SELECT CONCAT(first_name, SPACE(1), middle_name,SPACE(1), last_name) AS 'Full Name' FROM employees WHERE salary  IN(25000, 14000, 12500, 23600) ORDER BY `employee_id` ASC;
