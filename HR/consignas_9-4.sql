------------------EJERCICIO 1------------------------

--CON SUBCONSULTAS--
DELETE FROM employees
WHERE employee_id in (SELECT e.employee_id FROM employees e
                     JOIN departments d on e.department_id = d.department_id
					 JOIN locations l on d.location_id = l.location_id
					 JOIN countries c on l.country_id = c.country_id
					 WHERE c.country_id = "CA");    
			
DELETE FROM departments
WHERE department_id in (SELECT d.department_id FROM departments d
					   JOIN locations l on d.location_id = l.location_id
					   JOIN countries c on l.country_id = c.country_id
					   WHERE c.country_id = "CA");
					   
DELETE FROM locations
WHERE location_id in (SELECT l.location_id FROM locations l
					  JOIN countries c on l.country_id = c.country_id
					  WHERE c.country_id = "CA");
					  
DELETE FROM countries
WHERE country_id = "CA";


--SIN SUBCONSULTAS--
DELETE FROM employees
WHERE department_id = 2;

DELETE FROM departments
WHERE location_id = 1800;

DELETE FROM locations
WHERE country_id = 1800;

DELETE FROM countries
WHERE country_id = "CA";



-----------EJERCICIO 2-------
SELECT e.first_name as nombre, e.last_name as apellido, d.department_name as departamento, c.country_name as pais FROM employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
JOIN countries c on l.country_id = c.country_id
WHERE c.country_id = "UK"





-----------------EJERCICIO 3-----------
-------MANERA 1-----------
DELETE FROM jobs 
WHERE job_id in (SELECT j.job_id FROM jobs j
				LEFT JOIN employees e on j.job_id = e.job_id
				GROUP BY j.job_id
				HAVING count(e.job_id) = 0);

--------MANERA 2---------
DELETE FROM jobs
WHERE job_id NOT IN (SELECT DISTINCT job_id FROM employees);








--------------EJERCICIO 4------------
SELECT j.job_title as nombre_trabajo, count(e.employee_id) as cant_empleados, avg(e.salary) as promedio, j.min_salary as salario_minimo, j.max_salary as salario_maximo FROM jobs j
JOIN employees e on j.job_id = e.job_id
GROUP BY nombre_trabajo
HAVING cant_empleados >= 2
ORDER BY cant_empleados DESC



