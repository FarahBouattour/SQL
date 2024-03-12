/*Query a count of the number of cities in CITY having a Population larger than 100.000
CITY(ID,NAME,COUNTRYCODE,DISTRICT,POPULATION)*/

SELECT COUNT(COUNTRYCODE)
FROM CITY
WHERE POPULATION > 100000;