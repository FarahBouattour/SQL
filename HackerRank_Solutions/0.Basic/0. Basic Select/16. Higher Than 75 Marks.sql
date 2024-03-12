/*Query the Name of any student in STUDENTS who scored higher than 75 Marks. 
Order your output by the last three characters of each name. 
If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), 
secondary sort them by ascending ID.

STUDENTS(ID,Name,Marks)

The Name column only contains uppercase (A-Z) and lowercase (a-z) letters.*/

SELECT Name 
FROM STUDENTS 
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID;
