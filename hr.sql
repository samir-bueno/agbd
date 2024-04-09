--- Ejercicio 1
select first_name, last_name, salary from employees where salary < 6000

--  Ejercicio 2
select e.first_name, e.last_name, d.department_name, l.city, l.state_province from employees e
join departments d on e.department_id = d.department_id
join locations l on d.location_id = l.location_id

-- Ejercicio 3
select e.first_name, e.last_name, m.first_name from employees e join employees m on  e.employee_id = m.manager_id
order by m.manager_id

-- Ejercicio 4
select e.first_name, e.last_name, d.first_name from employees e
join dependents d on e.employee_id = d.employee_id
order by e.first_name asc

-- Ejercicio 5
select e.first_name, j.job_title, j.max_salary from employees e 
join jobs j on e.job_id = j.job_id
order by j.max_salary desc

-- Ejercicio 6
select e.first_name, e.last_name, d.department_name, e.salary from employees e
join departments d on e.department_id = d.department_id
order by e.first_name and d.department_name

-- EJercicio 7
--sin resolver hasta la actividad 10



