-- 8) Hacer un ranking de los autos 
-- (marca y modelo) que manejan las
-- personas que ganan menos de 35000 dolares
-- al año.  Este ranking debe estar ordenado
-- desde los más populares a los menos populares
-- y no debe incluir los modelos que tengan 
-- menos de 4 autos


SELECT p.name, i.annual_income, dl.car_make, count(dl.car_model) as cant_autos from drivers_license dl
join person p on dl.id = p.license_id
join income i on p.ssn = i.ssn
where annual_income < 35000 
GROUP by dl.car_make
having  cant_autos >= 4
order by cant_autos DESC




