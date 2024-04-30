--Ejercicio 1
select title as Peliculas from film
order by title 

--Ejercicio 2
select rating as calificacion from film
group by rating
order by rating

--Ejercicio 3
select title as titulo, rental_rate as alquiler, rating as calificacion from film where rating = "G" or rating = "PG-13"
order by rental_rate DESC, title

--Ejercicio 4
SELECT co.country as pais, ci.city as ciudad from country co
join city ci on co.country_id = ci.country_id

--Ejercicio 5
SELECT co.country as pais, count(ci.city) as ciudades from country co
join city ci on co.country_id = ci.country_id
GROUP BY co.country
order by ciudades DESC

--Ejercicio 6
SELECT co.country as pais, count(ci.city) as ciudades from country co 
join city ci on co.country_id = ci.country_id
GROUP BY co.country
HAVING ciudades > 2
order by ciudades DESC

--Ejerccio 7
select min(rental_date) as fecha_minima, max(rental_date) as fecha_ultima from rental where return_date is not null

--falta e8, 9, 10












