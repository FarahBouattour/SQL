/*Query the two cities in STATION with the shortest and 
longest CITY names, as well as their respective lengths 
(i.e.: number of characters in the name). If there is more 
than one smallest or largest city, choose the one that comes 
first when ordered alphabetically.
The STATION table is described as follows:

STATION(ID,CITY,STATE,LAT_N,LONG_W)*/

(SELECT CITY, length(CITY) AS LEN 
FROM STATION 
ORDER BY LEN, CITY 
LIMIT 1)

UNION ALL

(SELECT CITY, length(CITY) AS LEN 
FROM STATION 
ORDER BY LEN DESC 
LIMIT 1);