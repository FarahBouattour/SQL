/*Query the list of CITY names ending with vowels 
(a, e, i, o, u) from STATION. Your result cannot contain 
duplicates.

STATION(ID,CITY,STATE,LAT_N,LONG_W)*/

SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY REGEXP '.[AEIOU]$';

/*This is the DB2 Solution
Select DISTINCT CITY From STATION WHERE upper(substr(CITY, length(CITY),1)) in ('A','E','I','O','U');
*/