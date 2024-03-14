/*Pivot the Occupation column in OCCUPATIONS so that each Name 
is sorted alphabetically and displayed underneath its 
corresponding Occupation. The output column headers should be 
Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to 
an occupation.

OCCUPATIONS(Name, Occupation)*/

SELECT Doctor.Name, Professor.Name, Singer.Name, Actor.Name
FROM (SELECT RANK() OVER (ORDER BY Name) AS R 
      FROM OCCUPATIONS
      WHERE Occupation = (SELECT Occupation
                          FROM OCCUPATIONS
                          GROUP BY Occupation
                          ORDER BY COUNT(*) DESC
                          LIMIT 1)) AS MaxRank
                          
LEFT JOIN (SELECT RANK() OVER (ORDER BY Name) AS R, Name 
		   FROM OCCUPATIONS
           WHERE Occupation = 'Doctor') AS Doctor
ON MaxRank.R = Doctor.R 
           
LEFT JOIN (SELECT RANK() OVER (ORDER BY Name) AS R, Name 
           FROM OCCUPATIONS
           WHERE Occupation = 'Professor') AS Professor
ON MaxRank.R = Professor.R 
           
LEFT JOIN (SELECT RANK() OVER (ORDER BY Name) AS R, Name 
           FROM OCCUPATIONS
           WHERE Occupation = 'Singer') AS Singer
ON MaxRank.R = Singer.R
           
LEFT JOIN (SELECT RANK() OVER (ORDER BY Name) AS R, Name 
		   FROM OCCUPATIONS
		   WHERE Occupation = 'Actor') AS Actor
ON MaxRank.R = Actor.R;