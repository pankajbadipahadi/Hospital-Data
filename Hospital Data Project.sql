DROP TABLE IF EXISTS hospital_data;

CREATE TABLE hospital_data(
		Hospital_Name VARCHAR(100) NOT NULL,
		Location VARCHAR(50),
		Department VARCHAR(50) NOT NULL,
		Doctors_Count INT,
		Patients_Count INT,
		Admission_Date DATE,
		Discharge_Date DATE,
		Medical_Expenses NUMERIC(10,2)
);


SELECT * FROM hospital_data;



--1) Write an SQL query to find total number of patients across all hospital

SELECT SUM(Patients_Count) AS TOTAL_PATIENT
FROM hospital_data;



--2 Retrieve the avg count of doctors available in each hospital

SELECT Hospital_Name, AVG(Doctors_Count) AS AVG_Doc_count
FROM hospital_data
GROUP BY (Hospital_Name);

-- SELECT Doctors_Count
-- FROM hospital_data
-- WHERE Hospital_Name='Wellness Clinic';


--3 Find the top 3 department eith highest no. of patients

SELECT Department, Patients_Count
FROM hospital_data
ORDER BY Patients_Count DESC
LIMIT 3;


--4 Identify the hospital that recorded the highest medical expenses
SELECT Hospital_Name, Medical_Expenses
FROM hospital_data
ORDER BY Medical_Expenses DESC
LIMIT 1;


--5 Calculate the avg medical Expenses per day for each hospital

SELECT AGE(Discharge_Date, Admission_Date) AS Days_Count
FROM hospital_data;



SELECT Hospital_Name, Medical_Expenses
FROM hospital_data
GROUP BY Hospital_Name;



--6 Find the patient with longest stay by calculating difference between admission date and discharge date

SELECT AGE(Discharge_Date, Admission_Date) AS Days_Count
FROM hospital_data ORDER BY Days_Count DESC;



--7 Count total no of patient treated in each city

SELECT Location, COUNT(Patients_Count)
FROM hospital_data
GROUP BY Location;


--8 Calculate the avg no of days patients spend in each department



--9 Find the department eith least no of patients

SELECT Department, COUNT(Patients_Count) AS Least_Patient
FROM hospital_data
GROUP BY Department
ORDER BY Least_Patient ASC;


--10 Group the data by month & calculate the total medical expenses for each month


