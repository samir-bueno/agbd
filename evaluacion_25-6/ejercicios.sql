--EJERCICIO 1--
SELECT d.department_name as nombre_departamento, count(e.first_name) as cant_empleados, sum(e.salary) as salario_total FROM departments d
JOIN employees e on d.department_id = e.department_id
GROUP BY d.department_name

--EJERCICIO 2--
SELECT e.first_name as nombre, e.last_name as apellido, d.department_name as departamento, c.country_name as pais from employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
JOIN countries c on l.country_id = c.country_id
WHERE c.country_id = "US"

--EJERCICIO 3--
--primera parte aqui muestra los que no tienen numero de telefono pero si lo demas datos
SELECT employee_id, first_name, last_name, email, phone_number, department_id from employees
where phone_number ISNULL;

--segunda parte aqui se actualiza con ese numero de telefono el cual es 111.222.3344--
UPDATE employees 
SET phone_number = "111.222.3344"
where phone_number ISNULL

--EJERCICIO 4--
UPDATE employees
SET salary = salary * 1.2
WHERE job_id in (SELECT j.job_id from jobs j
                 JOIN employees e on j.job_id = e.job_id
                 WHERE job_title = "Purchasing Clerk" and salary < 8000)

--EJERCICIO 5--
--primera parte--
INSERT INTO departments(department_name, location_id)
VALUES("Development", (SELECT location_id FROM locations
					   WHERE street_address = "147 Spadina Ave"));

--segunda parte--
INSERT INTO employees(first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id)
VALUES("Matias", "Gonzales", "mgonzales@gmail.com", "1.231.231.122", "2024-06-25", 9, 5000, 100, 12),
("Laura", "Nieves", "lnieves@gmail.com", "1.231.231.122", "2024-06-25", 9, 5000, 100, 12),
("Federico", "Lopez", "fgonzales@gmail.com", "1.231.231.122", "2024-06-25", 9, 5000, 100, 12)

--EJERCICIO 6--
DELETE FROM employees
WHERE department_id = 7;

DELETE FROM departments
WHERE location_id = 2700;

DELETE FROM locations
WHERE country_id = "DE";

DELETE FROM countries
WHERE country_name = "Germany";

--EJERCICIO 7--










