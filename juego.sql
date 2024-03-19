SELECT * FROM village
SELECT * FROM INHABITANT
SELECT * FROM inhabitant WHERE job = 'butcher'
SELECT * FROM inhabitant WHERE state = 'friendly'
SELECT * FROM inhabitant WHERE job = 'weaponsmith'
SELECT * FROM inhabitant WHERE state = 'friendly' and job = 'weaponsmith'
select *from inhabitant where STATE = 'friendly' and job LIKE  '%smith'
INSERT  INTO inhabitant (name, villageid, gender, job, gold, state) VALUES ('Stranger', 1, '?', '?', 0, '?')
select personid from inhabitant where name = 'Stranger'
select gold from inhabitant where name = 'Stranger'
select * from item where owner is null
UPDATE item SET owner = 20 WHERE item = 'coffee cup'
UPDATE item SET owner = 20 WHERE owner is null
select * from item where owner = 20
SELECT * FROM inhabitant WHERE state = 'friendly' and job = 'dealer' or job = 'merchant'