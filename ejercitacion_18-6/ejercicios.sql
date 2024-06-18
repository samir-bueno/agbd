--Ejercicio 1--
INSERT INTO regions(region_name)
VALUES("Africa"),("Middle east")

--Ejercicio 2--

--AFRICA: EGIPTO, NIGERIA, ZAMBIA, ZIMBABWE
--MEDIO-ORIENTE: ISRAEL, KUWAIT

UPDATE countries
SET region_id = 5
where country_id = "EG" or country_id = "NG" or country_id = "ZM" or country_id = "ZW";

UPDATE countries
SET region_id = 6
where country_id = "IL" or country_id = "KW"

--Ejercicio 3--
DELETE FROM regions
WHERE region_id = 4



--Ejercicio 4--
--AFRICA: Angola, Burundi
--MEDIO-ORIENTE: Qatar, Siria

INSERT INTO countries(country_id, country_name, region_id)
VALUES("AN", "Angola", 5), ("BU", "Burundi", 5), ("QA", "Qatar", 6), ("SI", "Siria", 6) 

--Ejercicio 5 --
INSERT INTO regions(region_id, region_name)
VALUES(4, "Middle east and africa")

--Ejercicio 6--

--Alternativa 1
UPDATE countries
set region_id = 4
where region_id in (SELECT region_id FROM countries
                    where region_id = 5 or region_id = 6)

--Alternativa 2 
UPDATE countries
set region_id = 4
where region_id in (SELECT region_id FROM regions
                    where region_name = "Africa" or region_name = "Middle east")




