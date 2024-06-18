--EJERCICIO 1--
SELECT count(DISTINCT NOMBRE_ESTACION) AS cant_estaciones_totales 
FROM barcelona_viajeros_por_franja_xlsx

--EJERCICIO 2--
SELECT DISTINCT NOMBRE_ESTACION AS cant_estaciones_totales 
FROM barcelona_viajeros_por_franja_xlsx

--EJERCICIO 3--
SELECT DIS NOMBRE_ESTACION AS cant_estaciones_totales, count(VIAJEROS_SUBIDOS) as pasajeros_subidos, count(VIAJEROS_BAJADOS) as pasajeros_bajados 
FROM barcelona_viajeros_por_franja_xlsx
GROUP by NOMBRE_ESTACION

--EJERCICIO 4--
SELECT  NOMBRE_ESTACION AS cant_estaciones_totales, sum(VIAJEROS_SUBIDOS) as pasajeros_subidos, sum(VIAJEROS_BAJADOS) as pasajeros_bajados, sum(VIAJEROS_SUBIDOS) - sum(VIAJEROS_BAJADOS) as diferencia
FROM barcelona_viajeros_por_franja_xlsx
GROUP by NOMBRE_ESTACION
order by diferencia DESC

--EJERCICIO 5--
SELECT NOMBRE_ESTACION, count(VIAJEROS_SUBIDOS) as pasajeros_subidos, TRAMO_HORARIO FROM barcelona_viajeros_por_franja_xlsx
GROUP BY NOMBRE_ESTACION
ORDER BY pasajeros_subidos DESC
LIMIT 1 --esta seria la estacion con mayor numeros de pasajeros por horario--

--EJERCICIO 6--
SELECT NOMBRE_ESTACION, max(VIAJEROS_SUBIDOS) as pasajeros_subidos, TRAMO_HORARIO 
FROM barcelona_viajeros_por_franja_xlsx

--falta 7,8,9,10,11,12















