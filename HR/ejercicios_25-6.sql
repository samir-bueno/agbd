--EJERCICIO 1--
SELECT e.first_name, d.department_name, l.location_id, e.salary, em.first_name from employees e
JOIN employees em on e.employee_id = em.manager_id
JOIN departments d on e.department_id = d.department_id
JOIN locations l on l.location_id = d.location_id
ORDER BY e.salary DESC

--EJERCICIO 2--
UPDATE jobs set max_salary = max_salary * 0.75, min_salary = min_salary * 0.75

--EJERCICIO 3--
DELETE FROM employees
WHERE job_id IN (SELECT j.job_id from jobs j
                 JOIN employees e on e.job_id = j.job_id
				 where e.salary > j.max_salary)




