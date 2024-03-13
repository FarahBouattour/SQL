/*Given the CITY and COUNTRY tables, query the names of all 
the continents (COUNTRY.Continent) and their respective 
average city populations (CITY.Population) rounded down to 
the nearest integer.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

CITY(ID,NAME,COUNTRYCODE,DISTRICT,POPULATION)
COUNTRY(CODE,NAME,CONTINENT,REGION,SURFACEAREA,POPULATION,
LIFEEXPECTANCY,GNP,GNPOLD,LOCALNAME,GOVERNMENTFORM,
HEADOFSTATE,CAPITAL, CODE2)*/

SELECT COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION))
FROM CITY
JOIN COUNTRY
ON  CITY.COUNTRYCODE = COUNTRY.Code
GROUP BY COUNTRY.CONTINENT;