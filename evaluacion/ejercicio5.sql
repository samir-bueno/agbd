-- 5) Encontrar la edad mínima, máxima y promedio
-- de las mujeres que tienen licencia de conducir

SELECT gender as mujer, min(age) as edad_minima, max(age) as edad_maxima, avg(age) as edad_promedio from drivers_license
where gender = "female" and id is not null 