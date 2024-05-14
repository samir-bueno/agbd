-- 1) Mostrar todas las ciudades donde se 
-- reportaron asesinatos. 
-- Las ciudades deben estar en orden alfabético
-- y no debe haber repetidos

select type as tipo, city as ciudad from crime_scene_report where type = "murder"
group by city
order by city ASC








