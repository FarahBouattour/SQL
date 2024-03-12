/*Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
STATION(ID,CITY,STATE,LAT_N,LONG_W)*/

SELECT COUNT(CITY) - COUNT(DISTINCT CITY) 
FROM STATION;