SELECT * FROM village

SELECT * FROM INHABITANT

SELECT * FROM inhabitant 
WHERE job = 'butcher'

SELECT * FROM inhabitant 
WHERE state = 'friendly'

SELECT * FROM inhabitant 
WHERE state = 'friendly' and job = 'weaponsmith'

select *from inhabitant 
where STATE = 'friendly' and job LIKE  '%smith'

INSERT  INTO inhabitant (name, villageid, gender, job, gold, state) 
VALUES ('Stranger', 1, '?', '?', 0, '?')

select personid from inhabitant 
where name = 'Stranger'

select gold from inhabitant 
where personid = 20

select * from item 
where owner is null

UPDATE item SET owner = 20 
WHERE item = 'coffee cup'

update item set owner = 20 
where owner is null

select * from item 
where owner = 20

select * from inhabitant 
where state = "friendly" and job = "dealer" or job = "merchant"

update item set owner = 15
where item = "ring" or item = "teapot"

UPDATE inhabitant SET gold = gold + 120 
WHERE personid = 20

update inhabitant set name = "samir" 
where personid = 20

select * from inhabitant 
where job = "baker"
order by gold DESC

UPDATE inhabitant SET gold = gold + 100 - 150 
WHERE personid = 20

INSERT INTO item (item, owner) 
VALUES ('sword', 20)

select * from inhabitant 
where job = "pilot"

SELECT village.name FROM village, inhabitant
WHERE village.villageid = inhabitant.villageid AND inhabitant.name = 'Dirty Dieter'

select i.name from inhabitant i
join village v on i.personid = v.chief
where i.personid = 13

SELECT COUNT(*) FROM inhabitant, village 
WHERE village.villageid = inhabitant.villageid AND village.name = 'Onionville'

select count(gender) from inhabitant
where villageid = 3 and gender = "f"

select name from inhabitant
where villageid = 3 and gender = "f"

SELECT SUM(inhabitant.gold) FROM inhabitant, village 
WHERE village.villageid = inhabitant.villageid AND village.name = 'Cucumbertown'

select sum(gold) from inhabitant
where job = "baker" or job = "dealer" or job = "merchant"

SELECT job, SUM(inhabitant.gold), AVG(inhabitant.gold) FROM inhabitant 
GROUP BY job 
ORDER BY AVG(inhabitant.gold)

select state, avg(gold) from inhabitant
group by state

DELETE FROM inhabitant 
WHERE name = 'Dirty Dieter'

DELETE FROM inhabitant
WHERE name = 'Dirty Diane'

update inhabitant set state = "friendly" 
where personid = 8

UPDATE inhabitant SET state = 'emigrated'
WHERE personid = 20

