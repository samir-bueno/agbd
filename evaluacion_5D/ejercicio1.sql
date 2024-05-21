-- 1) Mostrar todos los tipos de crimenes
-- reportados en la ciudad 'SQL City'.
-- Los tipos de crimen deben estar en orden 
-- alfabético y no debe haber repetidos

select DISTINCT type as tipo, city as ciudad from crime_scene_report
where city = "SQL City"
order by type asc



