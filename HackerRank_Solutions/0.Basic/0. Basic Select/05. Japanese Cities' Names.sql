/*Query the names of all the Japanese cities in the CITY table. 
The COUNTRYCODE for Japan is JPN.
CITY(ID,NAME,COUNTRYCODE,DISTRICT,POPULATION)*/

SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN';