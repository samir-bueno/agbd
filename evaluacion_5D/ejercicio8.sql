-- 8) Hacer un ranking de los 5 eventos más populares
-- a los que asistieron las personas que ganan 
-- más de 35000 dolares al año.  


select fce.event_name as evento, i.annual_income as ingreso, count(person_id) as cant_per from facebook_event_checkin fce
join person p on fce.person_id = p.id
join income i on p.ssn = i.ssn
where i.annual_income > 35000
group by fce.event_name
order by  cant_per DESC
limit 5