-- 2) Listar el nombre de la persona y los 
-- datos del auto (marca, modelo y patente) de 
-- todos las mujeres de menos de 40 años, 
-- elegir el orden en que se muestran 


select p.name as nombre, dl.age as edad, dl.gender as genero, dl.car_make as marca, dl.car_model as modelo, dl.plate_number as patente from person p
join drivers_license dl on  p.license_id = dl.id 
where dl.gender = "female" and dl.age < 40
order by dl.age DESC