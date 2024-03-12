/*Query the average population for all cities in CITY, rounded down to the nearest integer.
CITY(ID,NAME,COUNTRYCODE,DISTRICT,POPULATION)*/

SELECT ROUND(AVG(POPULATION))
FROM CITY;