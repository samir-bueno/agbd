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

--Ejercicio 7
select min(rental_date) as fecha_minima, max(rental_date) as fecha_ultima from rental where return_date is not null

--Ejercicio 8
select f.title as titulo, count(a.first_name) as actores from film f
join film_actor fi on f.film_id = fi.film_id
join actor a on fi.actor_id = a.actor_id
GROUP by titulo
order by actores ASC
limit 10

--Ejercicio 9
SELECT title as titulo, rental_rate as alquilar from film
order by alquilar DESC
limit 1 OFFSET 2

--Ejercicio 10
SELECT f.title as nombre_pelicula, avg(a.first_name) as promedio_actores, count(a.first_name) as cant_actores, f.rental_duration as duracion_pelis from actor a
join film_actor fi on a.actor_id = fi.actor_id
join film f on fi.film_id = f.film_id
where duracion_pelis >= 2 and duracion_pelis <= 4
group by nombre_pelicula
order by duracion_pelis DESC













