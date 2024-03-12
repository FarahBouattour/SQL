/*Query the difference between the maximum and minimum populations in CITY.
CITY(ID,NAME,COUNTRYCODE,DISTRICT,POPULATION)*/

SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;