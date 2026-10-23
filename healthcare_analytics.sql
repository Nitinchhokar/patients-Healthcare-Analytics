CREATE DATABASE IF NOT EXISTS healthcare_analytics;

USE healthcare_analytics;

SHOW TABLES;

SELECT *
FROM patient_data
LIMIT 10;

DESCRIBE patient_data;

#Q1. How many patient records are in the database?

SELECT COUNT(*) AS total_records
FROM patient_data;

#Q2: What are the average, minimum, and maximum ages of patients in the dataset?

SELECT
    ROUND(AVG(age), 1) AS average_age,
    MIN(age) AS youngest_age,
    MAX(age) AS oldest_age
FROM patient_data;

#Q3: How many patient records belong to each gender?
SELECT 
	gender,
	COUNT(*) AS total_records
FROM patient_data
GROUP BY gender
ORDER BY total_records DESC;

#Q4: How many patient records are there for each medical condition?
SELECT 
	medical_condition,
	COUNT(*) AS total_records
FROM patient_data
GROUP BY medical_condition;

#Q5: How many patient records belong to each admission type?
SELECT 
	admission_type,
	COUNT(*) AS total_records
FROM patient_data
GROUP BY admission_type
ORDER BY total_records DESC;

#Q6: Which medical conditions have the highest average billing amount?
SELECT
    medical_condition,
    ROUND(AVG(billing_amount), 2) AS average_billing
FROM patient_data
GROUP BY medical_condition
ORDER BY average_billing DESC;

#Q7: Which admission types have the highest average billing amount?
SELECT
    admission_type,
    ROUND(AVG(billing_amount), 2) AS average_billing
FROM patient_data
GROUP BY admission_type
ORDER BY average_billing DESC;

#Q8: Which hospitals have the highest total recorded billing amount?
SELECT
    hospital,
    ROUND(SUM(billing_amount), 2) AS total_billing,
	COUNT(*) AS total_records
FROM patient_data
GROUP BY hospital;

#Q9: What is the average hospital length of stay ?
SELECT
    ROUND(
        AVG(DATEDIFF(discharge_date, admission_date)),
        2
    ) AS average_length_of_stay_days
FROM patient_data;

#Q10: Which hospitals have the longest average patient stays?
SELECT
    hospital,
    ROUND(
        AVG(DATEDIFF(discharge_date, admission_date)),
        2
    ) AS average_stay_days,
    COUNT(*) AS total_records
FROM patient_data
GROUP BY hospital
ORDER BY average_stay_days DESC;

#Q11: What are the highest and lowest recorded billing amounts?
SELECT
	round(MAX(billing_amount),2) AS MAX_AMOUNT,
  	round(MIN(billing_amount),2) AS MIN_AMOUNT,
	ROUND(AVG(billing_amount), 2) AS AVG_AMOUNT
FROM patient_data;

#Q12: How many records require billing review?
SELECT
    COUNT(*) AS records_requiring_review
FROM patient_data
WHERE billing_review_needed = TRUE;

#Q13: How many patient records were admitted each month?
SELECT
    DATE_FORMAT(admission_date, '%Y-%m') AS admission_month,
    COUNT(*) AS total_admissions
FROM patient_data
GROUP BY DATE_FORMAT(admission_date, '%Y-%m')
ORDER BY admission_month;

#Q14: Which medications appear most frequently in the dataset?
SELECT
    medication,
    COUNT(*) AS total_records
FROM patient_data
GROUP BY medication
ORDER BY total_records DESC;

#Q15: What is the distribution of test results?
SELECT
    test_results,
    COUNT(*) AS total_records
FROM patient_data
GROUP BY test_results
ORDER BY total_records DESC;