/*Query the total population of all cities in CITY where 
District is California.

CITY(ID,NAME,COUNTRYCODE,DISTRICT,POPULATION)*/

SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';