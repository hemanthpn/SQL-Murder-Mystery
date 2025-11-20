--Searching for information about a murder on 15 January 2018
SELECT * 
FROM crime_scene_report
WHERE date= 20180115 AND type ='murder' AND city ='SQL City';

--Seeking the witnesses
--The first witness:
SELECT *
FROM person 
WHERE address_street_name = 'Northwestern Dr' 
ORDER BY address_number DESC
LIMIT 1;

--The second witness:
SELECT * FROM person
WHERE Name LIKE 'Annabel%'
AND address_street_name ='Franklin Ave';

--Witnesses - interview:
SELECT * FROM interview
WHERE person_id IN (14887,16371);

--Checking Morty Schapiro interview:
SELECT person.* FROM drivers_license
INNER JOIN person
ON drivers_license.id=person.license_id
WHERE plate_number LIKE "%H42W%"
LIMIT 100;

--Checking the Person with the Gold Membership_Status
SELECT * FROM person
INNER JOIN get_fit_now_member
ON person.id=get_fit_now_member.person_id
WHERE membership_status LIKE 'gold'
AND person_id IN (51739,67318,78193);
  
--Check your solution
INSERT INTO solution VALUES (1, 'Jeremy Bowers')
SELECT value
FROM solution

--Murderer - interview:
SELECT *
FROM interview
WHERE person_id = 67318

--Checking woman:
SELECT person.* FROM drivers_license
INNER JOIN person
ON drivers_license.id=person.license_id
WHERE hair_color= 'red'
AND gender = 'female'
AND car_make = 'Tesla'
AND car_model = 'Model S';

--finding the culprit:
SELECT * FROM person
INNER JOIN facebook_event_checkin
ON person.id=facebook_event_checkin.person_id
WHERE person_id IN (78881,90700,99716);

--Check your solution:
INSERT INTO solution VALUES (1, 'Miranda Priestly')
SELECT value FROM solution
