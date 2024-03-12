/*Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
STATION(ID,CITY,STATE,LAT_N,LONG_W)*/

SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY REGEXP '.[^AEUIO]$';