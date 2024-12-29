-- View All
SELECT * FROM ocd_patient_dataset;
SELECT COUNT(GENDER) as total FROM ocd_patient_dataset;

-- Patients By Gender
SELECT 
gender,
COUNT(GENDER) AS count,
ROUND(((COUNT(GENDER)/1500) * 100),2) AS gender_percentage,
AVG(`Y-BOCS Score (Obsessions)`)
AS avg_obs_score FROM ocd_patient_dataset
GROUP BY 1
ORDER BY 2;

-- Patients' Family History of OCD 
SELECT
`Family History of OCD`,
COUNT(*)
FROM ocd_patient_dataset
GROUP BY 1;

-- Patients' Family History of OCD  and Ethnicity
SELECT
`Patient ID`,`Family History of OCD`,Ethnicity
FROM ocd_patient_dataset
;


-- Patients By Age
SELECT
age,
COUNT(age) as count
FROM ocd_patient_dataset
GROUP BY 1
ORDER BY 1;
-- Patients By Ethnicity
SELECT ethnicity,
count(*) AS patients_count,
AVG(`Y-BOCS Score (Obsessions)`) AS avg_obs_score
 FROM ocd_patient_dataset
GROUP BY 1
ORDER BY 2;

-- Number of People diagnosed with OCD Monthly
SELECT 
`OCD Diagnosis Date`,
COUNT(`Patient ID`) as patients_diagnosed 
FROM ocd_patient_dataset 
GROUP BY 1;

-- Most Common Obsession Type 

SELECT 
`Obsession Type`,
COUNT(*) AS patients_diagnosed,
AVG(`Y-BOCS Score (Obsessions)`) AS avg_obs_score
FROM ocd_patient_dataset
GROUP BY 1 
ORDER BY 2;

-- The most common Compulsion Type and its respective Average Obsession Score
SELECT 
`Compulsion Type`,
COUNT(*) AS patients_diagnosed,
AVG(`Y-BOCS Score (Obsessions)`) AS avg_obs_score
FROM
ocd_patient_dataset
GROUP BY 1
ORDER BY 2;

-- Relation between Symptom Duration and Medications prescribed
SELECT
`Patient ID`,
`Duration of Symptoms (months)`,
Medications
FROM ocd_patient_dataset
ORDER BY 2,3;