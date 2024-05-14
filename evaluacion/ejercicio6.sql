-- 6) Contar la cantidad de miembros del 
-- gimnasio de cada categoría (gold, silver, 
-- etc), ordenadas desde la que tiene más 
-- miembros a la que tiene menos



SELECT membership_status as status, count(name) as cant_persona from get_fit_now_member
group by membership_status
order by cant_persona DESC


