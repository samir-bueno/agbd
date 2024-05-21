-- 3) Buscar la lista de todas las personas
-- que NO están asociadas al gimnasio Get-Fit-Now



SELECT p.name from person p
left join get_fit_now_member gfm on p.id = gfm.person_id
where gfm.id is null