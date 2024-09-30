-- 1. What is the gender distribution of respondents from India?

SELECT Gender, COUNT(*) AS count
FROM dataset
WHERE Country = 'India'
GROUP BY Gender;


-- 2. What percentage of respondents from India are interested in education abroad and sponsorship?
SELECT
(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM dataset WHERE Country = 'India')) AS percentage
FROM dataset
WHERE Country = 'India' AND Higher_Education_Abroad_Self_Sponsor = 'Yes';


-- 3. What are the 6 top influences on career aspirations for respondents in India?
SELECT Career_Influences, COUNT(*) AS count
FROM dataset
WHERE Country = 'India'
GROUP BY Career_Influences
ORDER BY count DESC
LIMIT 6;



4. How do career aspiration influences vary by gender in India?
SELECT Gender, Career_Influences, COUNT(*) AS count
FROM dataset
WHERE Country = 'India'
GROUP BY Gender, Career_Influences
ORDER BY Gender, count DESC;



5. What percentage of respondents are willing to work for a company for at least 3 years?
SELECT
(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM dataset)) AS percentage
FROM dataset
WHERE Likelihood_3+_Years_Employer = 'Yes';



6. How many respondents prefer to work for socially impactful companies?
SELECT COUNT(*) AS count
FROM dataset
WHERE Social_Impact_Mission_Rating > 0;



7. How does the preference for socially impactful companies vary by gender?
SELECT Gender, COUNT(*) AS count
FROM dataset
WHERE Social_Impact_Mission_Rating > 0
GROUP BY Gender;



# 8. What is the distribution of minimum expected salary in the first three years among respondents?
SELECT Expected_Salary_For_First_3_years, COUNT(*) AS count
FROM dataset
GROUP BY Expected_Salary_For_First_3_years;



9. What is the expected minimum monthly salary in hand?
SELECT Expected_Salary_After_5_years, COUNT(*) AS count
FROM dataset
GROUP BY Expected_Salary_After_5_years;



10. What percentage of respondents prefer remote working?
SELECT
(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM dataset)) AS percentage
FROM dataset
WHERE NO_REMOTE_Policy_Rating > 0;



# 11. What is the preferred number of daily work hours?
SELECT Working_Hours_preference, COUNT(*) AS count
FROM dataset
GROUP BY Working_Hours_preference;




# 12. What are the common work frustrations among respondents?
SELECT Job_Frustration, COUNT(*) AS count
FROM dataset
GROUP BY Job_Frustration




# 13. How does the need for work-life balance interventions vary by gender?
SELECT Gender, COUNT(*) AS count
FROM dataset
WHERE Full_Week_Leave_Cycle IS NOT NULL
GROUP BY Gender;



14. How many respondents are willing to work under an abusive manager?
SELECT COUNT(*) AS count
FROM dataset
WHERE Abusive_Manager_Acceptance = 'Yes';




# 15. What is the distribution of minimum expected salary after five years?
SELECT Expected_Salary_After_5_years, COUNT(*) AS count
FROM dataset
GROUP BY Expected_Salary_After_5_years





-- 16. What are the remote working preferences by gender?
SELECT Gender, COUNT(*) AS count
FROM dataset
WHERE NO_REMOTE_Policy_Rating > 0
GROUP BY Gender;




-- 17. What are the top work frustrations for each gender?
SELECT Gender, Job_Frustration, COUNT(*) AS count
FROM dataset
GROUP BY Gender, Job_Frustration
ORDER BY Gender, count DESC;




# 18. What factors boost work happiness and productivity for respondents?
SELECT Job_Satisfaction, COUNT(*) AS count
FROM dataset
GROUP BY Job_Satisfaction;



# 19. What percentage of respondents need sponsorship for education abroad?
SELECT
(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM dataset)) AS percentage
FROM dataset
WHERE Higher_Education_Abroad_Self_Sponsor = 'Yes';