-- 2) Listar el nombre y los datos del auto
-- (marca, modelo y patente) de todos los
-- varones más de 70 años, elegir el orden
-- en que se muestran 

select  p.name as nombre, dl.gender as genero, dl.age as edad, dl.car_make as marca, dl.car_model as modelo, dl.plate_number as placa from drivers_license dl 
join person p on p.license_id = dl.id
where gender = "male" and age >= 70





