--EJERCICIO 1--
SELECT count(DISTINCT NOMBRE_ESTACION) AS cant_estaciones_totales 
FROM barcelona_viajeros_por_franja_xlsx

--EJERCICIO 2--
SELECT DISTINCT NOMBRE_ESTACION
FROM barcelona_viajeros_por_franja_xlsx

--EJERCICIO 3--
SELECT NOMBRE_ESTACION, count(VIAJEROS_SUBIDOS) as pasajeros_subidos, count(VIAJEROS_BAJADOS) as pasajeros_bajados, sum(VIAJEROS_SUBIDOS) as pasajeros_subidos_total, sum(VIAJEROS_BAJADOS) as pasajeros_bajados_total, abs(sum(VIAJEROS_BAJADOS) - sum(VIAJEROS_SUBIDOS)) as diferencia
FROM barcelona_viajeros_por_franja_xlsx
GROUP by NOMBRE_ESTACION
order by diferencia DESC

--EJERCICIO 4--
SELECT  NOMBRE_ESTACION AS cant_estaciones_totales, sum(VIAJEROS_SUBIDOS) as pasajeros_subidos, sum(VIAJEROS_BAJADOS) as pasajeros_bajados, sum(VIAJEROS_SUBIDOS) - sum(VIAJEROS_BAJADOS) as diferencia
FROM barcelona_viajeros_por_franja_xlsx
GROUP by NOMBRE_ESTACION
order by diferencia DESC

--EJERCICIO 5--
SELECT NOMBRE_ESTACION, count(VIAJEROS_SUBIDOS) as pasajeros_subidos, TRAMO_HORARIO FROM barcelona_viajeros_por_franja_xlsx
GROUP BY TRAMO_HORARIO
ORDER BY pasajeros_subidos DESC


--EJERCICIO 6--
SELECT NOMBRE_ESTACION, max(VIAJEROS_SUBIDOS) as pasajeros_subidos, TRAMO_HORARIO 
FROM barcelona_viajeros_por_franja_xlsx

--EJERCICIO 7--
SELECT NOMBRE_ESTACION, count(VIAJEROS_BAJADOS) as pasajeros_bajados, TRAMO_HORARIO 
FROM barcelona_viajeros_por_franja_xlsx
GROUP BY TRAMO_HORARIO
ORDER BY pasajeros_bajados DESC

--EJERCICIO 8--
SELECT NOMBRE_ESTACION, max(VIAJEROS_BAJADOS) as pasajeros_bajados, TRAMO_HORARIO 
FROM barcelona_viajeros_por_franja_xlsx

--EJERCICIO 9--
SELECT NOMBRE_ESTACION, VIAJEROS_SUBIDOS, VIAJEROS_BAJADOS, abs(VIAJEROS_BAJADOS - VIAJEROS_SUBIDOS) as diferencia, TRAMO_HORARIO
FROM barcelona_viajeros_por_franja_xlsx
GROUP BY TRAMO_HORARIO
ORDER BY diferencia DESC
limit 1

--EJERCICIO 10--
SELECT NOMBRE_ESTACION, sum(VIAJEROS_SUBIDOS), sum(VIAJEROS_BAJADOS), abs(sum(VIAJEROS_BAJADOS) - sum(VIAJEROS_SUBIDOS)) as diferencia, TRAMO_HORARIO
FROM barcelona_viajeros_por_franja_xlsx
GROUP BY NOMBRE_ESTACION
ORDER BY diferencia DESC
limit 1

--EJERCICIO 11--
SELECT round(avg(VIAJEROS_BAJADOS), 2) as promedio_pasajeros_bajados, round(avg(VIAJEROS_SUBIDOS),2) as promedio_pasajeros_subidos, TRAMO_HORARIO 
FROM barcelona_viajeros_por_franja_xlsx
GROUP BY TRAMO_HORARIO
ORDER BY TRAMO_HORARIO DESC

--EJERCICIO 12--
SELECT NOMBRE_ESTACION, round(avg(VIAJEROS_BAJADOS), 2) as promedio_pasajeros_bajados, round(avg(VIAJEROS_SUBIDOS),2) as promedio_pasajeros_subidos, TRAMO_HORARIO 
FROM barcelona_viajeros_por_franja_xlsx
GROUP BY TRAMO_HORARIO
ORDER BY TRAMO_HORARIO DESC

















