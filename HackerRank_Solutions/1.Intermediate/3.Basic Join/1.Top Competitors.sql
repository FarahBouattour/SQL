/*Julia just finished conducting a coding contest, and she 
needs your help assembling the leaderboard! Write a query to 
print the respective hacker_id and name of hackers who 
achieved full scores for more than one challenge. Order your 
output in descending order by the total number of challenges 
in which the hacker earned a full score. If more than one 
hacker received full scores in same number of challenges, 
then sort them by ascending hacker_id.

Hackers(hacker_id,name)
Difficulty(difficult_level,score)
Challenges(challenge_id,hacker_id,difficulty_level)
Submissions(submission_id,hacker_id,challenge_id,score)*/

SELECT H.hacker_id, H.name
FROM Hackers H
JOIN Submissions S ON S.hacker_id = H.hacker_id 
JOIN Challenges C ON C.challenge_id = S.challenge_id
JOIN Difficulty D ON D.difficulty_level = C.difficulty_level
WHERE D.score = S.score
GROUP BY H.hacker_id, H.name
HAVING count(*) > 1
ORDER BY count(*) DESC, hacker_id;