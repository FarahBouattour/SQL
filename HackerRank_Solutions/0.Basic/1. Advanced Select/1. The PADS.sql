/*Generate the following two result sets

OCCUPATIONS(Name,Occupation)*/

/*1. Query an alphabetically ordered list of all names in 
OCCUPATIONS, immediately followed by the first letter of 
each profession as a parenthetical (i.e.: enclosed in 
parentheses). For example: AnActorName(A), ADoctorName(D), 
AProfessorName(P), and ASingerName(S)*/

/*2. Query the number of ocurrences of each occupation in 
OCCUPATIONS. Sort the occurrences in ascending order, and 
output them in the following format:
There are a total of [occupation_count] [occupation]s.*/

SELECT CONCAT(Name,'(',SUBSTRING(Occupation,1,1),')')
FROM OCCUPATIONS
ORDER BY Name;

SELECT 'There are a total of ', COUNT(*) as occurence, CONCAT(LOWER(Occupation),'s.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY occurence, Occupation;