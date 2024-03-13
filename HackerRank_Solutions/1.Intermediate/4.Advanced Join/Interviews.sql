/*Samantha interviews many candidates from different colleges 
using coding challenges and contests. Write a query to print 
the contest_id, hacker_id, name, and the sums of 
total_submissions, total_accepted_submissions, total_views, 
and total_unique_views for each contest sorted by contest_id. 
Exclude the contest from the result if all four sums are 0.

Note: A specific contest can be used to screen candidates at 
more than one college, but each college only holds 1 screening 
contest. 

Contests(contest_id,hacker_id,name)
Colleges(college_id,contest_id)
Challenges(challenge_id,college_id)
View_Stats(challenge_id,total_views,total_unique_views)
Submission_Stats(challenge_id,total_submissions,total_accepted_submission)*/

SELECT C.contest_id, 
	   C.hacker_id, 
       C.name, 
       SUM(S.total_submissions) AS ts, 
       SUM(S.total_accepted_submissions) AS tas, 
       SUM(V.total_views) AS tv, 
       SUM(V.total_unique_views) AS tuv
FROM Contests C
LEFT JOIN Colleges Co 
	ON Co.contest_id = C.contest_id
LEFT JOIN Challenges Ch 
	ON Ch.college_id = Co.college_id
LEFT JOIN (SELECT challenge_id, 
				  SUM(total_views) AS total_views, 
                  SUM(total_unique_views) AS total_unique_views 
           FROM View_Stats 
           GROUP BY challenge_id) AS V 
	ON V.challenge_id = Ch.challenge_id
LEFT JOIN (SELECT challenge_id,
				  SUM(total_submissions) AS total_submissions,
				  SUM(total_accepted_submissions) AS total_accepted_submissions 
           FROM Submission_Stats
           GROUP BY challenge_id) AS S 
	ON S.challenge_id = Ch.challenge_id
GROUP BY C.contest_id, C.hacker_id, C.name
HAVING ts + tas + tv + tuv > 0
ORDER BY contest_id

