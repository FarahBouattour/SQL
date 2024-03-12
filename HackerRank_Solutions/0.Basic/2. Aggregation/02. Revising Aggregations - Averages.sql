/*Query the average population of all cities in CITY where District is California.
CITY(ID,NAME,COUNTRYCODE,DISTRICT,POPULATION)*/

SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';