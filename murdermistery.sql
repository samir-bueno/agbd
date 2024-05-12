--muestra las tablas 
SELECT name 
FROM sqlite_master
where type = 'table'

--muestra la tabla crime_scene_report
SELECT sql 
FROM sqlite_master
where name = 'crime_scene_report'

--muestra la fecha, ciudad y tipo en la tabla crime_scene_report
 select * 
from crime_scene_report
where date = "20180115" and city = "SQL City" and type = "murder"

--muestra los datos del primer testigo el cual es Morty schapiro
select id, name, license_id, address_number, max(address_number), address_street_name ssn from person
where address_street_name = "Northwestern Dr"


--muestra los datos de el nombre Annabel y sus respectivos apellidos
select id, name, license_id, address_number, address_street_name ssn from person
where name like "Annabel%"

--muestra los datos de la segunda testigo Annabel miller
select id, name, license_id, address_number, address_street_name, ssn from person
where name = "Annabel Miller"


--muestra lo que vieron y lo relatan, los numeros son referido a morty y annabel
select person_id, transcript from interview 
where person_id = "14887" or person_id = "16371"

--muestra la patente H42W sin importar como empiza o termina
select id, age, height, eye_color ,hair_color, gender, plate_number, car_make, car_model  from drivers_license
where plate_number like "%H42W%"


--muestra el id que empieze con 48Z sin importar como termine
select id, person_id, name, membership_start_date, membership_status from get_fit_now_member
where id like "48Z%"

--estamos buscando y transformando la licencia a id y de esa manera encontraremos al culpable
--esto esta siendo comparado con la tabla get_fit_now_member, y nos dio 3 resultados y de esos fui
--comparando y me dio que el culpable fue jeremy bowers
select id, license_id, name from person 
where license_id = "423327"

--resultado del asesino
INSERT INTO solution VALUES (1, 'Jeremy Bowers');
        
        SELECT value FROM solution;

-----------------------NUEVO: BUSQUEDA DEL ASESINO MEJORADO-------------------------
--con tan solo saber los dos testigos y sus transcripciones podemos hacer lo siguiente:
select gfnm.id as bolsa_id, gfnm.person_id as persona_id, gfnm.name as nombre, gfnm.membership_status as status, plate_number as numero_placa from get_fit_now_member gfnm
join person p on gfnm.person_id = p.id
join drivers_license dl on p.license_id = dl.id 
where gfnm.id like "%48Z%" and gfnm.membership_status = "gold" and dl.plate_number like "%H42W%"

--resultado del asesino
INSERT INTO solution VALUES (1, 'Jeremy Bowers');
        
        SELECT value FROM solution;

--EXTRA

--nos aparece 3 mujeres alguna de ellas sera la futura verdadera villana
select id, age, height, eye_color ,hair_color, gender, plate_number, car_make, car_model  from drivers_license
where hair_color = "red" and car_make = "Tesla" and car_model = "Model S" and gender = "female" 

--estamos buscando la fecha y el concierto
select person_id, event_id, event_name, date from facebook_event_checkin
where date like "201712%" and event_name like "%SQL Symphony Concert%"



--estamos viendo que la licencia 202298 es de la persona miranda priestly con id 99716
--debido a que fijandonos con el codigo anterior habra un momento en donde se repite 3 veces la id
--y en la entrevista del asesino dijo que fue al concierto 3 veces
select id, license_id, name from person
where license_id = "202298"

--Resultado de la verdadera villana
INSERT INTO solution VALUES (1, 'Miranda Priestly');
        
        SELECT value FROM solution;

--------------------NUEVO: RESULTADO DE LA VILLANA MEJORADO---------------------------------
--con tan solo saber quien es el asesino y su transcripcion podemos hacer lo siguiente:
select fec.person_id as persona_id, fec.event_id as evento_id, fec.event_name as evento, fec.date as fecha_evento, p.name as nombre, dl.height as altura, dl.gender as genero, dl.car_model as modelo_de_auto, dl.hair_color as color_pelo from facebook_event_checkin fec
join person p on fec.person_id = p.id
join drivers_license dl on p.license_id = dl.id
where dl.gender = "female" and dl.height >= 65 and dl.height <= 67 and fec.event_name = "SQL Symphony Concert" and fec.date like "201712%" and dl.car_model = "Model S" and dl.hair_color = "red"  

--Resultado de la verdadera villana
INSERT INTO solution VALUES (1, 'Miranda Priestly');
        
        SELECT value FROM solution;

