-- 4) Encontrar el nombre y la dirección completa
-- de la persona que vive en la anteúltima casa
-- de la calle 'Franklin Ave'

select name as nombre, address_street_name as direccion, address_number as num_direccion from person 
where address_street_name = "Franklin Ave"
order by address_number DESC
limit 1 OFFSET 1