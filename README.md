# Student Mental Health Data SQL Analysis
## Description
This project is an analysis of a dataset of student mental health information using SQL. The goal is to provide insights into different types of mental issues in students, the factors that contribute to mental health issues among college students correlating to the demographic information.

## Dataset
The dataset used in this analysis is a collection of survey responses from college students regarding their mental health and well-being. The dataset includes demographic information such as age, gender, course study, CGPA, marital status as well as information about mental health diagnoses, treatment.

## Data Cleansing
The dataset was pre-processed to ensure that the data is clean and usable for analysis. This involved removing any null values and outliers, as well as standardizing the format of the data.

## Data Dictionary
Here is a brief summary of the variables in the dataset:
- ID: Unique identifier for each student
- Age: Age of the student
- Gender: Gender of the student (M/F)
- Course: Academic course of the student (49 courses included)
- Study: Academic year of study (Year 1-4)
- CGPA: Cumulative Grade Point Average of each student in their course
- Marital status: Whether the student is married or unmarried (Yes/No)
- Mental Health Diagnosis: Whether the student has been diagnosed with a mental health condition (Depression/Anxiety/Panic attack) (Yes/No)
- Treatment: Whether the student has received treatment for a mental health condition (Yes/No)
- Timestamp without time zone.

## Demographic Analysis
This section analyses the demographic information in the dataset, including the age, gender and marital status. It includes SQL queries to compare married to unmarried students suffering from depression, percentage of students experiencing anxiety depending on their academic year of study, correlation of gender with treatment assistance, percentage of students having panic attacks, depression and anxiety.

## Treatment Analysis
This section analyses the treatment received by the students for their mental health condition. It includes SQL queries to calculated the percentage of students who have received treatment and the distribution of treatment by gender.

## Symptom Analysis
This section analyses the symptoms experiences by the students related to their mental health condition. It includes SQL queries to calculate the percentage of students who have experienced symptoms, the most common symptoms and the distribution of symptoms by gender.

## Results - Refer SQL queries in mental_health.sql file
The analysis reveals several interesting insights about the mental health of college students:
- The average age of students in the dataset is 21.
- 60% of the students in the dataset are female.
-	Married : unmarried depression ratio is 0.9.
-	50% of students are experiencing anxiety in their Year 1 of the course study.
-	Female students are more likely to receive treatment assistance compared to male students as per this dataset.
-	0% of Law students experience panic attacks as per this dataset.
-	51.5% of the students in the dataset experience both depression and anxiety.
-	48.5% of the students in the dataset experience both depression and panic attacks.
-	9.9% of the students in the dataset experience anxiety, depression and panic attacks.


-	Psychology, ENM, KOE, Communications, Usuluddin, Pendidikan islam, ALA, Marine science, Malcom, MHSC, Nursing, BENL, Law and Econs are the most depressing courses.
-	9.4% of students that are experiencing at least one mental health issue that are receiving treatment assistance.
-	Out of 75% female students in the dataset 6.66% are receiving treatment assistance.
-	Out of 26% of male students in the dataset 3.85% are receiving treatment assistance.
This states that female students are more likely to receive treatment assistance compared to male students.

## Limitations
It is important to note that this analysis has several limitations:
•	The dataset is limited to a specific population of college students and may not be generalizable to other populations.
•	The dataset is self-reported and may be subject to biases or inaccuracies.
•	The dataset does not include information about the severity of the mental health conditions or the effectiveness of the treatments received.

## Usage
To replicate this analysis, users will need access to the dataset and a SQL database. The SQL code can be run on the database to produce the results presented in this documentation.



## Conclusion
This analysis provides valuable insights into the mental health of college students, including the prevalence of mental health diagnoses and the symptoms experienced. Further research is needed to better understand.





# Dashboard Summary
This dashboard provides an overview of various HR metrics and analytics. The data used in this dashboard includes information on employee demographics, performance, and attrition.

The dashboard is designed to help HR managers and executives quickly identify trends and insights, such as areas of high attrition, underperformance, and diversity representation.
## Key Metrics
The dashboard includes the following key metrics:
### Headcount
The total number of employees in the company, broken down by various demographics such as gender, age, and department.
### Attrition
The rate of employee attrition over time, broken down by various demographics and factors such as job role, performance, and job satisfaction.
### Performance
A performance summary of all employees, broken down by various factors such as department, job role, and manager.
### Diversity & Inclusion
A summary of diversity and inclusion metrics, such as gender and ethnicity representation, employee satisfaction scores, and promotion rates.
## Dashboard Views
### Overview
The overview provides a high-level summary of key HR metrics, including headcount, attrition, and diversity representation. It also includes a performance summary of all employees, broken down by department and job role.
## Attrition Analysis
The attrition analysis view provides an in-depth look at attrition rates and factors. It includes a trend analysis of attrition rates over time, as well as breakdowns of attrition by various demographics and factors such as performance and job satisfaction.
## Performance Analysis
The performance analysis view provides an overview of employee performance, broken down by various factors such as department and job role. It includes metrics such as average performance rating, promotion rates, and turnover rates.
## Diversity & Inclusion Analysis
The diversity & inclusion analysis view provides a summary of diversity metrics such as gender and ethnicity representation, employee satisfaction scores, and promotion rates. It also includes breakdowns of diversity by department and job role.
# Conclusion
This dashboard provides a comprehensive overview of HR analytics. By using this dashboard, HR managers and executives can quickly identify trends and insights related to headcount, attrition, performance, and diversity & inclusion.


