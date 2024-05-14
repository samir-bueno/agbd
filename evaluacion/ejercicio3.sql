-- 3) Buscar la lista de todas las personas
-- que no tienen licencia de conducir



--tiene licencia pero no carro
select p.name as nombre, p.license_id as licencia, car_model as carro from person p
left join drivers_license dl on p.license_id = dl.id
where car_model is null
