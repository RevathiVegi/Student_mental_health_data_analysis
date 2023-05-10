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



# Student Mental Health Data Analytics - PowerBI Dashboard
## Data Details
Data Source: The data is sourced from a survey conducted on the mental health of students, where the following data points were collected:
•	Timestamp: The date and time when the survey was conducted
•	Anxiety: A binary variable indicating if the student has experienced anxiety or not (Yes = 1, No = 0)
•	Depression: A binary variable indicating if the student has experienced depression or not (Yes = 1, No = 0)
•	Panic Attack: A binary variable indicating if the student has experienced a panic attack or not (Yes = 1, No = 0)
•	Course: The course taken by the student
•	CGPA: The cumulative grade point average of the student, represented by a decimal value
•	Study: The level of study of the student (Year 1, Year 2, Year 3, Year 4, Year 5)
•	Treatment Assistance: A binary variable indicating if the student has received treatment assistance or not (Yes = 1, No = 0)

## Bar Chart
The Bar Chart Showing Mental Health Issues by Course is a visualization created in Power BI, which displays the number of students reporting anxiety, depression, and panic attacks for each course in the dataset. The visualization has courses on the y-axis and the count of mental health issues on the x-axis. The chart helps to identify which courses have higher numbers of mental health issues reported.
The chart is created using a bar chart visualization in Power BI, where each course is represented by a bar. The bars are sorted in descending order based on the total number of mental health issues reported across all courses. The color of each bar is assigned based on the type of mental health issue - anxiety is represented in brown, depression in beige, and panic attacks in grey.
The chart provides a clear visual representation of the number of mental health issues reported for each course. Users can easily identify courses with the highest number of reported mental health issues, and also compare the relative number of mental health issues across courses.

### Conclusion
Overall, the Bar Chart Showing Mental Health Issues by Course is a useful visualization for identifying the prevalence of mental health issues reported by students in different courses. It provides a clear and easily interpretable visual representation of the data, which can be used to identify areas where further support may be needed.

## Line chart
The line chart has the following visual elements:
•	X-Axis: The x-axis represents the different mental health indicators such as anxiety, depression, and panic attack, along with the timestamp. 
•	Y-Axis: The y-axis represents the number of students enrolled in each course.
•	Legend: The legend represents the CGPA of the students, with each color representing a different range of CGPA values.
•	Small Multiples: The small multiples represent the different study levels of the students, with each level represented by a different chart.

### Interpretation
The line chart provides an overview of the mental health indicators experienced by students over time, with a breakdown of the data by course and study level. The chart indicates that students across all courses and study levels have reported experiencing anxiety, depression, and panic attacks at varying levels. The chart also shows that students with lower CGPA values have reported experiencing more mental health issues. By using small multiples, the chart allows for easy comparison of the mental health indicators across different study levels. This information can help educational institutions identify areas where they can provide support to students to improve their mental health and academic performance.

## Donut chart
### Insights
•	The donut chart clearly shows that anxiety is the most prevalent mental health issue among students across all study levels, followed by depression and panic attacks.
•	The proportion of students with anxiety and depression appears to increase slightly with each passing year of study, whereas the proportion of students with panic attacks remains relatively constant.
•	The largest group of students represented in the dataset are in year 1, followed by year 2, and the proportion of students with mental health issues generally decreases as the study level increases.

### Conclusion
This donut chart provides an easily digestible overview of the distribution of mental health issues among students by their study level. The chart shows that anxiety is the most prevalent mental health issue across all study levels, and the proportion of students with mental health issues generally decreases as the study level increases. The insights gained from this chart could be used by academic institutions to inform the design and implementation of mental health support services for students.

## Scatter plot
The scatter plot visualizes the relationship between different variables from a student mental health dataset. The plot has the following variables:
X-Axis: Count of Age The count of age column represents the number of students at a particular age in the dataset. This axis represents the frequency of students at a particular age.
Y-Axis: CGPA CGPA (Cumulative Grade Point Average) is a standard method used to measure a student's academic performance. This axis represents the academic performance of students.
Size: Count of Course The count of course represents the number of students enrolled in a particular course. The size of the circle in the plot represents the number of students enrolled in the course.
Legend: Study Study represents the year of study of students. Each year of study is represented by a different color in the plot.
Values: The plot has three variables as values - Treatment Assistance, CGPA, and Timestamp. Treatment Assistance is a binary variable, with 1 representing that a student received treatment assistance, and 0 representing that they did not receive treatment assistance. The CGPA represents the academic performance of the student, and the Timestamp column represents the time at which the data was collected.
The scatter plot helps to identify any patterns or relationships between the variables. It can be useful in determining if there is any correlation between a student's age, academic performance, the number of students enrolled in a particular course, and whether or not they received treatment assistance. It can also be used to identify any outliers or trends in the data.











