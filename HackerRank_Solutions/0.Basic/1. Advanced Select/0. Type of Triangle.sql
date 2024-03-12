/*Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table
- Equilateral: It's a triangle with 3 sides of equal length.
- Isosceles: It's a triangle with 2 sides of equal length.
- Scalene: It's a triangle with 3 sides of differing lengths.
- Not A Triangle: The given values of A, B, and C don't form a triangle.
TRIANGLES(A,B,C)*/

SELECT CASE
	   WHEN A=B and B=C THEN 'Equilateral'
       WHEN A+B+C-GREATEST(A,B,C) <= GREATEST(A,B,C) THEN 'Not A Triangle'
       WHEN A=B OR A=C OR B=C THEN 'Isosceles'
       ELSE 'Scalene'
       END
FROM TRIANGLES;