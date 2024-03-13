/*A median is defined as a number separating the higher 
half of a data set from the lower half. Query the median of 
the Northern Latitudes (LAT_N) from STATION and round your 
answer to 4 decimal places.

STATION(ID,CITY,STATE,LAT_N,LONG_W)*/

SELECT ROUND(LAT_N,4) 
FROM (SELECT RANK() OVER(ORDER BY LAT_N) AS RANK_LAT, LAT_N
	  FROM STATION) as R
WHERE RANK_LAT = (SELECT CEIL(COUNT(*)/2) 
				  FROM STATION);