-- 7) Mostrar los nombres, numeros de seguridad social
-- (ssn), id de membresía y tipo de membresía de
-- las personas que fueron al gimnasio aunque sea una
-- vez durante el 2017.  Los resultados deben estar
-- ordenados de manera que los de un mismo tipo de
-- membresía (gold, silver, etc) aparezcan todos 
-- seguidos y dentro de cada una ordenados por ssn.   


select  p.name as nombre, gfnc.check_in_date as fecha, gfn.id as id_membresia, gfn.membership_status as membresia, p.ssn as seguridad_social  from get_fit_now_check_in gfnc 
join get_fit_now_member gfn on gfnc.membership_id = gfn.id
join person p on gfn.person_id = p.id
where check_in_date like "2017%"
group by p.name
order by membership_status, ssn







