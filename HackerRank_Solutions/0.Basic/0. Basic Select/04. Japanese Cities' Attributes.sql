/*Query all attributes of every Japanese city in the CITY 
table. The COUNTRYCODE for Japan is JPN.

CITY(ID,NAME,COUNTRYCODE,DISTRICT,POPULATION)*/

SELECT *
FROM CITY
WHERE COUNTRYCODE = 'JPN';