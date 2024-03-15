/*Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand.

Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to 
buy each non-evil wand of high power and age. Write a query to print the id, age, coins_needed, and power 
of the wands that Ron's interested in, sorted in order of descending power. If more than one wand has 
same power, sort the result in order of descending age.

The following tables contain data on the wands in Ollivander's inventory:
Wands(id,sode,coins_needed,power)
Wands_Property(code,age,is_evil)
Wands_Property: The code is the code of the wand, age is the age of the wand, and is_evil denotes 
whether the wand is good for the dark arts. If the value of is_evil is 0, it means that the wand 
is not evil. The mapping between code and age is one-one, meaning that if there are two pairs, 
(code1,age1) and (code2,age2) then code1!=code2*/

SELECT W.id, P.age, W.coins_needed, W.power
FROM Wands W
JOIN Wands_Property P
ON W.code = P.code
WHERE P.is_evil = 0 
      AND W.coins_needed = (SELECT MIN(W2.coins_needed) 
                            FROM Wands w2
                            JOIN Wands_Property P2
                            ON W2.code = P2.code
                            GROUP BY P2.age, W2.power
                            HAVING P2.age = P.age AND W2.power = W.power) 
ORDER BY W.power DESC, P.age DESC;