# Healthcare Patient Analytics

**Author: NITIN CHHOKAR**

## Project Overview

This project analyzes healthcare patient data to explore patient admissions, medical conditions, billing amounts, and hospital length of stay. It demonstrates an end-to-end data analytics workflow using Python, Pandas, MySQL, and Power BI.

The goal is to clean the dataset, perform exploratory data analysis (EDA), answer business questions using SQL, and present key findings through interactive Power BI dashboards.

## Dataset

- **Original records:** 55,500
- **Records after cleaning:** 54,966
- **Original columns:** 15
- **Dataset source:** [Healthcare Dataset – Kaggle](https://www.kaggle.com/datasets/prasad22/healthcare-dataset)

The dataset includes patient demographics, medical conditions, admission and discharge dates, hospital names, billing amounts, insurance providers, medications, and test results.

## Tools & Technologies

- **Python:** Data analysis and cleaning
- **Pandas & NumPy:** Data manipulation and preprocessing
- **Matplotlib & Seaborn:** Data visualization
- **Jupyter Notebook:** EDA and data cleaning
- **MySQL:** SQL queries and business analysis
- **Power BI:** Interactive dashboards and reporting

## Project Workflow

### 1. Data Cleaning

- Inspected the dataset structure and data types.
- Checked for missing and null values.
- Identified and removed 534 duplicate records.
- Standardized column names and categorical text values.
- Converted admission and discharge dates into datetime format.
- Created a billing review flag for records with zero or negative billing amounts.
- Checked data consistency and prepared the cleaned dataset for analysis.

### 2. Exploratory Data Analysis (EDA)

Performed EDA to understand:

- Patient age distribution.
- Gender distribution.
- Medical condition frequency.
- Admission type distribution.
- Billing amount distribution.
- Length of hospital stay.
- Test results and medication patterns.
- Trends and patterns in patient admissions.

### 3. SQL Analysis

Used MySQL to answer 15 business questions, including:

- What is the total number of patient records?
- What are the minimum, maximum, and average patient ages?
- How are patients distributed by gender and medical condition?
- Which medical conditions have the highest average billing?
- How do billing amounts vary by admission type?
- What is the average length of stay?
- Which hospitals have the highest recorded billing totals?
- Which records require billing review?
- How do admissions change over time?
- Which medications occur most frequently?
- What is the distribution of test results?

### 4. Power BI Dashboards

Created two dashboards to present the analysis through interactive visualizations.

#### Dashboard 1: Patient Admissions Overview

Includes:

- Total patient records.
- Average patient age.
- Average billing amount.
- Distinct hospital-name count.
- Monthly admission trends.
- Admission type distribution.
- Age distribution.
- Medical condition analysis.
- Test results and gender distribution.

#### Dashboard 2: Hospital Billing & Stay Analysis

Includes:

- Total recorded billing.
- Average length of stay.
- Billing records requiring review.
- Average billing by medical condition.
- Average length of stay by admission type.
- Monthly billing trends.
- Length-of-stay distribution.
- Insurance provider distribution.
- Billing review status.

## Key Findings

- The cleaned dataset contains **54,966 records** after removing 534 duplicates.
- Patient ages range from **13 to 89 years**.
- Average recorded billing is approximately **$25,544**.
- Average length of stay is approximately **15.5 days**.
- **106 records** were flagged for billing review because their billing amounts were zero or negative.
- The analysis provides an overview of admission patterns, billing distributions, and recorded hospital stays.

## Business Insights & Data Quality Considerations

- Billing records with zero or negative values should be reviewed before drawing financial conclusions.
- Hospital-name consistency should be checked before interpreting the distinct hospital-name count as the number of actual hospitals.
- Hospital-level averages based on very few records should be interpreted cautiously.
- The analysis is descriptive and does not establish treatment effectiveness, causal relationships, or patient readmission rates.

## Project Files

This repository includes:

- **Jupyter Notebook (`.ipynb`):** Python data cleaning and EDA.
- **SQL File (`.sql`):** 15 business analysis queries.
- **Power BI File (`.pbix`):** Interactive dashboard report.
- **Business Problem Document (`.pdf`):** Explains the key business problems and analytical questions explored in the dataset.
- **Project Report (`.pdf`):** Documentation of the workflow, analysis, dashboards, and recommendations.

## Conclusion

This project demonstrates practical data analytics skills, including data cleaning, exploratory data analysis, SQL querying, and interactive dashboard development. It highlights patterns in patient admissions, billing amounts, and length of stay while identifying data quality issues that require further investigation.

The project represents an end-to-end healthcare analytics workflow, from raw data preparation to business-focused reporting.

---

**Created by NITIN CHHOKAR**
*Healthcare Data Analytics Project*
