--Ejercicio 1
select department_name as departamentos from departments
order by department_name

--Ejercicio 2
select salary as salario from employees
group by salary
order by salary DESC

--Ejercicio 3
select e.first_name as nombre, e.last_name as apellido, j.job_title as trabajo, min_salary, max_salary from employees e
join jobs j on e.job_id = j.job_id
where job_title like "%manager%"
order by max_salary DESC, min_salary DESC

--Ejercicio 4
select c.country_name as pais, r.region_name as region from countries c
join regions r on c.region_id = r.region_id
order by region_name

--Ejercicio 5
select e.first_name as nombre, e.last_name as apellido, d.department_name as departamento, e.salary as salario from employees e
join departments d on e.department_id = d.department_id
where salary >= 9000 and salary <= 17000
order by salary DESC

--Ejercicio 6
select r.region_name as region, count(c.country_name) as cant_paises from regions r
join countries c on  r.region_id = c.region_id
GROUP by region
HAVING cant_paises > 5

--Ejercicio 7
select  min(hire_date) as primera_fecha, max(hire_date) as ultima_fecha from employees

--Ejercicio 8
select e.first_name as nombre, e.last_name as apellido, count(d.last_name) as cant_hijos from employees e
join dependents d on e.employee_id = d.employee_id
GROUP by apellido
order by cant_hijos DESC
limit 5

--Ejercicio 9
select first_name as nombre, salary as salario from employees
GROUP by salary
order by salary DESC
limit 1 OFFSET 2

--Ejercicio 10
SELECT e.first_name as nombre_empleado, avg(d.first_name) as promedio_hijos, count(d.first_name) as maximo_hijos from employees e
join dependents d on e.employee_id = d.employee_id
group by nombre_empleado
order by maximo_hijos DESC

