-- 7) Mostrar los nombres, numeros de seguridad social
-- (ssn), id de membresía y tipo de membresía de
-- las personas que fueron al gimnasio aunque sea una
-- vez durante el 2018. Los resultados deben estar
-- ordenados de manera que los de un mismo tipo de
-- membresía (gold, silver, etc) aparezcan todos 
-- seguidos y dentro de cada una ordenados por ssn.


select gf.check_in_date as fecha, gfnm.name as nombre, gfnm.id as id_membresia, gfnm.membership_status as membresia, p.ssn as seguridad_social from get_fit_now_check_in gf
join get_fit_now_member gfnm on gfnm.id = gf.membership_id 
join person p on  gfnm.person_id = p.id
where gf.check_in_date like "2018%"
order by gfnm.membership_status, p.ssn










