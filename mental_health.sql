-- 1)Are married people more or less likely to be experiencing symptoms of depression than non married people?
-- i)To Count no. of married people with depression
SELECT *
FROM (
	SELECT marital_status, depression,
	CASE
	WHEN marital_status = 'Yes' AND depression = 'Yes' THEN 1
	END as md
FROM mental_health
) subquery
WHERE md = 1;

-- ii)To Count no. of unmarried people with depression
SELECT *
FROM (
	SELECT marital_status, depression,
	CASE
	WHEN marital_status = 'No' AND depression = 'Yes' THEN 1
	END as umd
FROM mental_health
) subquery
WHERE umd = 1;

-- iii)married_depressed to unmarried_depressed ration
SELECT 
  COUNT(*) FILTER (WHERE md = 1) AS married_depressed,
  COUNT(*) FILTER (WHERE umd = 1) AS unmarried_depressed,
  (COUNT(*) FILTER (WHERE md = 1)::float / COUNT(*) FILTER (WHERE umd = 1)) AS married_unmarried_ratio
FROM (
  SELECT marital_status, depression,
    CASE
      WHEN marital_status = 'Yes' AND depression = 'Yes' THEN 1
    END as md
  FROM mental_health
) married_subquery,
(
  SELECT marital_status, depression,
    CASE
      WHEN marital_status = 'No' AND depression = 'Yes' THEN 1
    END as umd
  FROM mental_health
) unmarried_subquery;



-- 2)Get me the percentage of students experiencing Anxiety grouped by the Year of study.
SELECT study, AVG(CASE WHEN anxiety = 'Yes' THEN 1 ELSE 0 END) * 100 AS anxiety_percentage
FROM mental_health
GROUP BY study
ORDER BY anxiety_percentage DESC;

-- 3)Is there a correlation between gender and whether the individual is receiving assistance?

-- Male to treatment assistance correlation
 SELECT CORR(CASE WHEN gender = 'M' THEN 1 ELSE 0 END, CASE WHEN treatment_assistance = 'Yes' THEN 1 ELSE 0 END) AS correlation_coefficient
FROM mental_health;

-- Female to treatment assistance CORRELATION
SELECT CORR(CASE WHEN gender = 'F' THEN 1 ELSE 0 END, CASE WHEN treatment_assistance = 'Yes' THEN 1 ELSE 0 END) AS correlation_coefficient
FROM mental_health;

-- What percentage of Law students have panic attacks?
SELECT AVG(CASE WHEN course = 'Law' AND panic_attack = 'Yes' THEN 1 ELSE 0 END) * 100 AS panic_attack_percentage
FROM mental_health
WHERE course = 'Law';

-- For the individuals experiencing depression,
-- what is the percentage that also experience anxiety?

SELECT COUNT(*) FILTER (WHERE depression = 'Yes' AND anxiety = 'Yes') * 100.0 / COUNT(*) AS anxiety_percentage
FROM mental_health
WHERE depression = 'Yes';

-- b) what is the percentage that also experience panic attacks?
SELECT COUNT(*) FILTER (WHERE depression = 'Yes' AND panic_attack = 'Yes') * 100.0 / COUNT(*) AS panic_attack_percentage
FROM mental_health
WHERE depression = 'Yes';

-- what is the percentage that also experience anxiety AND panic attacks?
SELECT COUNT(*) * 100.0 / (SELECT COUNT(*) FROM mental_health) AS percentage
FROM mental_health
WHERE depression = 'Yes' AND anxiety = 'Yes' AND panic_attack = 'Yes';


-- I would like a sorted list of students by highest rate of depression. ie: Which course is the most depressing all the way to the least depressing.
SELECT course, COUNT(*) FILTER (WHERE depression = 'Yes') * 100.0 / COUNT(*) AS depression_percentage
FROM mental_health
GROUP BY course
ORDER BY depression_percentage DESC;

-- What is the percentage of students that are experiencing at least one mental health issue that are receiving assistence?
SELECT COUNT(*) FILTER (WHERE (depression = 'Yes' OR anxiety = 'Yes' OR panic_attack = 'Yes') AND treatment_assistance = 'Yes') * 100.0 / COUNT(*) FILTER (WHERE depression = 'Yes' OR anxiety = 'Yes' OR panic_attack = 'Yes') AS assistance_percentage
FROM mental_health
WHERE depression = 'Yes' OR anxiety = 'Yes' OR panic_attack = 'Yes';

-- Are Males or Females more likely to be receiving assistance?
SELECT gender, COUNT(*) FILTER (WHERE treatment_assistance = 'Yes') AS assistance_count,
  COUNT(*) AS total_count,
  COUNT(*) FILTER (WHERE treatment_assistance = 'Yes') * 100.0 / COUNT(*) AS assistance_percentage
FROM mental_health
GROUP BY gender;

-- Average age of students in the data SET
SELECT AVG(age) AS avg_age
FROM mental_health;

-- Percentage of female students in the dataset
SELECT COUNT(*) * 100.0 / 101 AS percentage_female FROM mental_health WHERE gender = 'F';
-- The most common mental health diagnosis among the students is depression disorder.
SELECT 
    most_common_diagnosis, 
    COUNT(*) AS count 
FROM (
    SELECT 
        CASE
            WHEN SUM(CASE WHEN depression = 'Yes' THEN 1 ELSE 0 END) > SUM(CASE WHEN anxiety = 'Yes' THEN 1 ELSE 0 END) AND SUM(CASE WHEN depression = 'Yes' THEN 1 ELSE 0 END) > SUM(CASE WHEN panic_attack = 'Yes' THEN 1 ELSE 0 END) THEN 'depression'
            WHEN SUM(CASE WHEN anxiety = 'Yes' THEN 1 ELSE 0 END) > SUM(CASE WHEN depression = 'Yes' THEN 1 ELSE 0 END) AND SUM(CASE WHEN anxiety = 'Yes' THEN 1 ELSE 0 END) > SUM(CASE WHEN panic_attack = 'Yes' THEN 1 ELSE 0 END) THEN 'anxiety'
            WHEN SUM(CASE WHEN panic_attack = 'Yes' THEN 1 ELSE 0 END) > SUM(CASE WHEN depression = 'Yes' THEN 1 ELSE 0 END) AND SUM(CASE WHEN panic_attack = 'Yes' THEN 1 ELSE 0 END) > SUM(CASE WHEN anxiety = 'Yes' THEN 1 ELSE 0 END) THEN 'panic_attack'
        END AS most_common_diagnosis
    FROM mental_health
    WHERE (depression = 'Yes' OR depression = 'No')
        AND (anxiety = 'Yes' OR anxiety = 'No')
        AND (panic_attack = 'Yes' OR panic_attack = 'No')
) AS subq
GROUP BY most_common_diagnosis;


-- Percentage of students students with a mental health diagnosis have received treatment.
SELECT
    COUNT(*) FILTER (WHERE treatment_assistance = 'Yes') * 100.0 / COUNT(*) AS percentage_received_treatment
FROM
    mental_health;