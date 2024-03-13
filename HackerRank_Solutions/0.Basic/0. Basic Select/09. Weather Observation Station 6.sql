/*Query the list of CITY names starting with vowels 
(i.e., a, e, i, o, or u) from STATION. Your result cannot 
contain duplicates.

STATION(ID,CITY,STATE,LAT_N,LONG_W)*/

SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY REGEXP '^[AEIOU].';