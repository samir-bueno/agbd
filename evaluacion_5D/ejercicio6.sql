-- 6) Contar la cantidad de autos de cada
-- marca, ordenadas desde la que tiene más 
-- autos a la que tiene menos.  Descartar
-- las marcas que tienen menos de 100 autos


SELECT car_make as marca, count(car_model) as cant_autos from drivers_license
GROUP by car_make
having cant_autos > 100
order by cant_autos DESC