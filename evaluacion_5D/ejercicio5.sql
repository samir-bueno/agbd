-- 5) Encontrar la edad mínima, máxima y promedio
-- de los varones que tienen licencia de conducir

SELECT gender, min(age) as edad_min, max(age) as edad_max, avg(age) as edad_prom from drivers_license
where gender = "male"