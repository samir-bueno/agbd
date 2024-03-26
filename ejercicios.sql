-- Ejercicio 1
SELECT Title, ArtistId, Milliseconds FROM albums, tracks

-- Ejercicio 2
SELECT FirstName, LastName, Address, City FROM customers

-- Ejercicios 3
SELECT  name, Milliseconds from tracks where composer is null and Milliseconds > 2900000

-- Ejercicio 4
SELECT FirstName, LastName, Company from customers where NOT Company is NULL

-- Ejercicio 5
SELECT DISTINCT BillingCity, BillingState from invoices where not BillingState is null
order by BillingCity DESC

-- Ejercicio 6
select Title from albums where title like "%OF%"
order by title

-- Ejercicio 7
select t.name, a.name from tracks t
join genres a on t.GenreId = a.GenreId

-- Ejercicio 8
select name, title from tracks a
join albums t on a.AlbumId = t.AlbumId
order by name DESC 





