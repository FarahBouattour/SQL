/*Query the list of CITY names from STATION that either do not 
start with vowels or do not end with vowels. Your result 
cannot contain duplicates.

STATION(ID,CITY,STATE,LAT_N,LONG_W)*/

SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY REGEXP '^[^AEUIO].' OR CITY REGEXP '.[^AEUIO]$';