-- 4) Encontrar el nombre y la dirección completa
-- de la persona que vive en la tercera casa
-- de la calle 'Franklin Ave' (ordenadas por la altura
-- de la calle)



select name as nombre, address_number as num_direccion, address_street_name as direccion from person
where address_street_name = "Franklin Ave"
order by address_number 
limit 1 OFFSET 2
