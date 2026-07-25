-- ==========================================================
-- Project : Lifestyle Health Analytics
-- Author  : Rakshita N
-- Database: SQLite
-- Dataset : Lifestyle_Health_Clean.csv
-- ==========================================================


-- ==========================================================
-- 1. DATA EXPLORATION
-- ==========================================================

-- Display all columns

SELECT *
FROM lifestyle_health;

------------------------------------------------------------

-- Display only Name

SELECT Name
FROM lifestyle_health;

------------------------------------------------------------

-- Display Name and Age

SELECT Name,
       Age
FROM lifestyle_health;

------------------------------------------------------------

-- Display Name, Age and Gender

SELECT Name,
       Age,
       Gender
FROM lifestyle_health;

------------------------------------------------------------

-- Display Occupation

SELECT Occupation
FROM lifestyle_health;

------------------------------------------------------------

-- Display Name and BMI

SELECT Name,
       BMI
FROM lifestyle_health;

------------------------------------------------------------

-- Display Name, City and State

SELECT Name,
       City,
       State
FROM lifestyle_health;

------------------------------------------------------------

-- Display first 10 records

SELECT *
FROM lifestyle_health
LIMIT 10;

------------------------------------------------------------

-- Display unique occupations

SELECT DISTINCT Occupation
FROM lifestyle_health;


-- ==========================================================
-- 2. DATA FILTERING
-- ==========================================================

-- Display all female members
SELECT *
FROM lifestyle_health
WHERE Gender = 'Female';

------------------------------------------------------------

-- Display all male members
SELECT *
FROM lifestyle_health
WHERE Gender = 'Male';

------------------------------------------------------------

-- Display people older than 50
SELECT Name,
       Age
FROM lifestyle_health
WHERE Age > 50;

------------------------------------------------------------

-- Display people with BMI greater than 25
SELECT Name,
       BMI
FROM lifestyle_health
WHERE BMI > 25;

------------------------------------------------------------

-- Display all teachers
SELECT *
FROM lifestyle_health
WHERE Occupation = 'Teacher';

------------------------------------------------------------

-- Display people whose water intake is more than 3 liters
SELECT Name,
       Water_Intake_L
FROM lifestyle_health
WHERE Water_Intake_L > 3;

------------------------------------------------------------

-- Display people sleeping less than 6 hours
SELECT Name,
       Sleep_Hours
FROM lifestyle_health
WHERE Sleep_Hours < 6;

------------------------------------------------------------

-- Display people burning more than 500 calories
SELECT Name,
       Calories_Burned
FROM lifestyle_health
WHERE Calories_Burned > 500;

------------------------------------------------------------

-- Display people from Mysore
SELECT *
FROM lifestyle_health
WHERE City = 'Mysore';


-- ==========================================================
-- 3. DATA SORTING (ORDER BY)
-- ==========================================================

-- Display people from youngest to oldest

SELECT Name,
       Age
FROM lifestyle_health
ORDER BY Age ASC;

------------------------------------------------------------

-- Display people from oldest to youngest

SELECT Name,
       Age
FROM lifestyle_health
ORDER BY Age DESC;

------------------------------------------------------------

-- Display people with highest BMI

SELECT Name,
       BMI
FROM lifestyle_health
ORDER BY BMI DESC;

------------------------------------------------------------

-- Display people with lowest BMI

SELECT Name,
       BMI
FROM lifestyle_health
ORDER BY BMI ASC;

------------------------------------------------------------

-- Display highest calories burned

SELECT Name,
       Calories_Burned
FROM lifestyle_health
ORDER BY Calories_Burned DESC;

------------------------------------------------------------

-- Display highest water intake

SELECT Name,
       Water_Intake_L
FROM lifestyle_health
ORDER BY Water_Intake_L DESC;

------------------------------------------------------------

-- Display names alphabetically

SELECT Name
FROM lifestyle_health
ORDER BY Name ASC;

------------------------------------------------------------

-- Display cities alphabetically

SELECT Name,
       City
FROM lifestyle_health
ORDER BY City ASC;

------------------------------------------------------------

-- Display highest sleep hours

SELECT Name,
       Sleep_Hours
FROM lifestyle_health
ORDER BY Sleep_Hours DESC;

------------------------------------------------------------

-- Display top 10 people with highest BMI

SELECT Name,
       BMI
FROM lifestyle_health
ORDER BY BMI DESC
LIMIT 10;

-- ==========================================================
-- 4. LOGICAL OPERATORS (AND, OR, NOT)
-- ==========================================================

-- Display female members older than 50

SELECT Name,
       Gender,
       Age
FROM lifestyle_health
WHERE Gender = 'Female'
AND Age > 50;

------------------------------------------------------------

-- Display male members with BMI greater than 25

SELECT Name,
       Gender,
       BMI
FROM lifestyle_health
WHERE Gender = 'Male'
AND BMI > 25;

------------------------------------------------------------

-- Display people who are Teachers OR Doctors

SELECT Name,
       Occupation
FROM lifestyle_health
WHERE Occupation = 'Teacher'
OR Occupation = 'Doctor';

------------------------------------------------------------

-- Display people from Mysore OR Hubli

SELECT Name,
       City
FROM lifestyle_health
WHERE City = 'Mysore'
OR City = 'Hubli';

------------------------------------------------------------

-- Display people who are NOT Female

SELECT Name,
       Gender
FROM lifestyle_health
WHERE Gender != 'Female';

------------------------------------------------------------

-- Display people older than 40 AND sleeping less than 6 hours

SELECT Name,
       Age,
       Sleep_Hours
FROM lifestyle_health
WHERE Age > 40
AND Sleep_Hours < 6;

------------------------------------------------------------

-- Display people with BMI greater than 30 OR calories burned greater than 600

SELECT Name,
       BMI,
       Calories_Burned
FROM lifestyle_health
WHERE BMI > 30
OR Calories_Burned > 600;

------------------------------------------------------------

-- Display female members from Bangalore

SELECT Name,
       Gender,
       City
FROM lifestyle_health
WHERE Gender = 'Female'
AND City = 'Bangalore';

------------------------------------------------------------

-- Display Doctors older than 45

SELECT Name,
       Occupation,
       Age
FROM lifestyle_health
WHERE Occupation = 'Doctor'
AND Age > 45;

------------------------------------------------------------

-- Display people who are NOT Teachers

SELECT Name,
       Occupation
FROM lifestyle_health
WHERE Occupation != 'Teacher';


-- ==========================================================
-- 5. LIKE, IN, BETWEEN
-- ==========================================================

-- Display people whose names start with 'A'

SELECT Name
FROM lifestyle_health
WHERE Name LIKE 'A%';

------------------------------------------------------------

-- Display people whose names end with 'a'

SELECT Name
FROM lifestyle_health
WHERE Name LIKE '%a';

------------------------------------------------------------

-- Display people whose names contain 'an'

SELECT Name
FROM lifestyle_health
WHERE Name LIKE '%an%';

------------------------------------------------------------

-- Display people whose occupation is Doctor or Teacher

SELECT Name,
       Occupation
FROM lifestyle_health
WHERE Occupation IN ('Doctor', 'Teacher');

------------------------------------------------------------

-- Display people living in Bangalore, Mysore or Hubli

SELECT Name,
       City
FROM lifestyle_health
WHERE City IN ('Bangalore', 'Mysore', 'Hubli');

------------------------------------------------------------

-- Display people whose age is between 30 and 40

SELECT Name,
       Age
FROM lifestyle_health
WHERE Age BETWEEN 30 AND 40;

------------------------------------------------------------

-- Display people whose BMI is between 20 and 25

SELECT Name,
       BMI
FROM lifestyle_health
WHERE BMI BETWEEN 20 AND 25;

------------------------------------------------------------

-- Display people whose water intake is between 2 and 4 liters

SELECT Name,
       Water_Intake_L
FROM lifestyle_health
WHERE Water_Intake_L BETWEEN 2 AND 4;

------------------------------------------------------------

-- Display people whose calories burned are between 400 and 700

SELECT Name,
       Calories_Burned
FROM lifestyle_health
WHERE Calories_Burned BETWEEN 400 AND 700;

------------------------------------------------------------

-- Display people whose sleep hours are between 7 and 9 hours

SELECT Name,
       Sleep_Hours
FROM lifestyle_health
WHERE Sleep_Hours BETWEEN 7 AND 9;

-- ==========================================================
-- 6. AGGREGATE FUNCTIONS
-- ==========================================================

-- Count the total number of records

SELECT COUNT(*) AS Total_Records
FROM lifestyle_health;

------------------------------------------------------------

-- Count the number of female members

SELECT COUNT(*) AS Female_Count
FROM lifestyle_health
WHERE Gender = 'Female';

------------------------------------------------------------

-- Find the average age

SELECT AVG(Age) AS Average_Age
FROM lifestyle_health;

------------------------------------------------------------

-- Find the minimum age

SELECT MIN(Age) AS Minimum_Age
FROM lifestyle_health;

------------------------------------------------------------

-- Find the maximum age

SELECT MAX(Age) AS Maximum_Age
FROM lifestyle_health;

------------------------------------------------------------

-- Find the average BMI

SELECT AVG(BMI) AS Average_BMI
FROM lifestyle_health;

------------------------------------------------------------

-- Find the highest calories burned

SELECT MAX(Calories_Burned) AS Highest_Calories_Burned
FROM lifestyle_health;

------------------------------------------------------------

-- Find the lowest sleep hours

SELECT MIN(Sleep_Hours) AS Lowest_Sleep_Hours
FROM lifestyle_health;

------------------------------------------------------------

-- Find the average water intake

SELECT AVG(Water_Intake_L) AS Average_Water_Intake
FROM lifestyle_health;

------------------------------------------------------------

-- Find the total calories burned by all members

SELECT SUM(Calories_Burned) AS Total_Calories_Burned
FROM lifestyle_health;

------------------------------------------------------------

-- Find the total water intake by all members

SELECT SUM(Water_Intake_L) AS Total_Water_Intake
FROM lifestyle_health;

------------------------------------------------------------

-- Find the average health score

SELECT AVG(Health_Score) AS Average_Health_Score
FROM lifestyle_health;

-- ==========================================================
-- 7. GROUP BY
-- ==========================================================

-- Count the number of people by gender

SELECT Gender,
       COUNT(*) AS Total_People
FROM lifestyle_health
GROUP BY Gender;

------------------------------------------------------------

-- Count the number of people in each occupation

SELECT Occupation,
       COUNT(*) AS Total_People
FROM lifestyle_health
GROUP BY Occupation
ORDER BY Total_People DESC;

------------------------------------------------------------

-- Find the average age by gender

SELECT Gender,
       AVG(Age) AS Average_Age
FROM lifestyle_health
GROUP BY Gender;

------------------------------------------------------------

-- Find the average BMI by occupation

SELECT Occupation,
       ROUND(AVG(BMI), 2) AS Average_BMI
FROM lifestyle_health
GROUP BY Occupation
ORDER BY Average_BMI DESC;

------------------------------------------------------------

-- Find the average sleep hours by city

SELECT City,
       ROUND(AVG(Sleep_Hours), 2) AS Average_Sleep_Hours
FROM lifestyle_health
GROUP BY City
ORDER BY Average_Sleep_Hours DESC;

------------------------------------------------------------

-- Find the average water intake by gender

SELECT Gender,
       ROUND(AVG(Water_Intake_L), 2) AS Average_Water_Intake
FROM lifestyle_health
GROUP BY Gender;

------------------------------------------------------------

-- Find the total calories burned by occupation

SELECT Occupation,
       SUM(Calories_Burned) AS Total_Calories_Burned
FROM lifestyle_health
GROUP BY Occupation
ORDER BY Total_Calories_Burned DESC;

------------------------------------------------------------

-- Find the highest BMI in each occupation

SELECT Occupation,
       MAX(BMI) AS Highest_BMI
FROM lifestyle_health
GROUP BY Occupation
ORDER BY Highest_BMI DESC;

------------------------------------------------------------

-- Find the lowest sleep hours by gender

SELECT Gender,
       MIN(Sleep_Hours) AS Minimum_Sleep_Hours
FROM lifestyle_health
GROUP BY Gender;

------------------------------------------------------------

-- Count the number of people in each city

SELECT City,
       COUNT(*) AS Total_People
FROM lifestyle_health
GROUP BY City
ORDER BY Total_People DESC;

-- ==========================================================
-- 8. HAVING
-- ==========================================================

-- Display occupations having more than 500 people

SELECT Occupation,
       COUNT(*) AS Total_People
FROM lifestyle_health
GROUP BY Occupation
HAVING COUNT(*) > 500;

------------------------------------------------------------

-- Display cities having more than 300 people

SELECT City,
       COUNT(*) AS Total_People
FROM lifestyle_health
GROUP BY City
HAVING COUNT(*) > 300;

------------------------------------------------------------

-- Display occupations with an average BMI greater than 25

SELECT Occupation,
       ROUND(AVG(BMI), 2) AS Average_BMI
FROM lifestyle_health
GROUP BY Occupation
HAVING AVG(BMI) > 25
ORDER BY Average_BMI DESC;

------------------------------------------------------------

-- Display cities where the average sleep hours are greater than 7

SELECT City,
       ROUND(AVG(Sleep_Hours), 2) AS Average_Sleep_Hours
FROM lifestyle_health
GROUP BY City
HAVING AVG(Sleep_Hours) > 7
ORDER BY Average_Sleep_Hours DESC;

------------------------------------------------------------

-- Display genders with an average water intake greater than 2.5 liters

SELECT Gender,
       ROUND(AVG(Water_Intake_L), 2) AS Average_Water_Intake
FROM lifestyle_health
GROUP BY Gender
HAVING AVG(Water_Intake_L) > 2.5;

------------------------------------------------------------

-- Display occupations where the total calories burned exceed 300000

SELECT Occupation,
       SUM(Calories_Burned) AS Total_Calories_Burned
FROM lifestyle_health
GROUP BY Occupation
HAVING SUM(Calories_Burned) > 300000
ORDER BY Total_Calories_Burned DESC;

------------------------------------------------------------

-- Display cities where the maximum BMI is greater than 35

SELECT City,
       MAX(BMI) AS Maximum_BMI
FROM lifestyle_health
GROUP BY City
HAVING MAX(BMI) > 35;

------------------------------------------------------------

-- Display occupations where the minimum age is less than 25

SELECT Occupation,
       MIN(Age) AS Minimum_Age
FROM lifestyle_health
GROUP BY Occupation
HAVING MIN(Age) < 25;

------------------------------------------------------------

-- Display workout types with an average calories burned greater than 500

SELECT Workout_Type,
       ROUND(AVG(Calories_Burned), 2) AS Average_Calories_Burned
FROM lifestyle_health
GROUP BY Workout_Type
HAVING AVG(Calories_Burned) > 500
ORDER BY Average_Calories_Burned DESC;

------------------------------------------------------------

-- Display cities having more than 100 members and an average BMI greater than 24

SELECT City,
       COUNT(*) AS Total_People,
       ROUND(AVG(BMI), 2) AS Average_BMI
FROM lifestyle_health
GROUP BY City
HAVING COUNT(*) > 100
   AND AVG(BMI) > 24
ORDER BY Average_BMI DESC;


-- ==========================================================
-- 9. CASE WHEN
-- ==========================================================

-- Categorize people based on Health Score

SELECT Name,
       Health_Score,
       CASE
           WHEN Health_Score >= 80 THEN 'Excellent'
           WHEN Health_Score >= 60 THEN 'Good'
           WHEN Health_Score >= 40 THEN 'Average'
           ELSE 'Poor'
       END AS Health_Status
FROM lifestyle_health;

------------------------------------------------------------

-- Categorize people based on Sleep Hours

SELECT Name,
       Sleep_Hours,
       CASE
           WHEN Sleep_Hours >= 8 THEN 'Good Sleep'
           WHEN Sleep_Hours >= 6 THEN 'Average Sleep'
           ELSE 'Poor Sleep'
       END AS Sleep_Category
FROM lifestyle_health;

------------------------------------------------------------

-- Categorize people based on BMI

SELECT Name,
       BMI,
       CASE
           WHEN BMI < 18.5 THEN 'Underweight'
           WHEN BMI < 25 THEN 'Normal'
           WHEN BMI < 30 THEN 'Overweight'
           ELSE 'Obese'
       END AS BMI_Status
FROM lifestyle_health;

------------------------------------------------------------

-- Categorize blood pressure

SELECT Name,
       Systolic_BP,
       CASE
           WHEN Systolic_BP < 120 THEN 'Normal'
           WHEN Systolic_BP <= 139 THEN 'Elevated'
           ELSE 'High'
       END AS Blood_Pressure_Status
FROM lifestyle_health;

------------------------------------------------------------

-- Categorize screen time

SELECT Name,
       Screen_Time_Hours,
       CASE
           WHEN Screen_Time_Hours < 4 THEN 'Low'
           WHEN Screen_Time_Hours <= 7 THEN 'Moderate'
           ELSE 'High'
       END AS Screen_Time_Category
FROM lifestyle_health;

------------------------------------------------------------

-- Categorize cholesterol levels

SELECT Name,
       Cholesterol,
       CASE
           WHEN Cholesterol < 200 THEN 'Normal'
           WHEN Cholesterol <= 239 THEN 'Borderline'
           ELSE 'High'
       END AS Cholesterol_Status
FROM lifestyle_health;

------------------------------------------------------------

-- Categorize water intake

SELECT Name,
       Water_Intake_L,
       CASE
           WHEN Water_Intake_L < 2 THEN 'Low'
           WHEN Water_Intake_L <= 3 THEN 'Adequate'
           ELSE 'High'
       END AS Water_Intake_Status
FROM lifestyle_health;

------------------------------------------------------------

-- Categorize stress level

SELECT Name,
       Stress_Level,
       CASE
           WHEN Stress_Level <= 3 THEN 'Low Stress'
           WHEN Stress_Level <= 6 THEN 'Moderate Stress'
           ELSE 'High Stress'
       END AS Stress_Category
FROM lifestyle_health;

------------------------------------------------------------

-- Categorize age

SELECT Name,
       Age,
       CASE
           WHEN Age < 18 THEN 'Child'
           WHEN Age <= 35 THEN 'Young Adult'
           WHEN Age <= 55 THEN 'Adult'
           ELSE 'Senior'
       END AS Age_Category
FROM lifestyle_health;

------------------------------------------------------------

-- Categorize disease risk

SELECT Name,
       Disease_Risk,
       CASE
           WHEN Disease_Risk = 'Low' THEN 'Healthy'
           WHEN Disease_Risk = 'Medium' THEN 'Needs Monitoring'
           WHEN Disease_Risk = 'High' THEN 'High Risk'
           ELSE 'Unknown'
       END AS Risk_Status
FROM lifestyle_health;
-- ==========================================================
-- 10. STRING FUNCTIONS
-- ==========================================================

-- Display all names in uppercase

SELECT Name,
       UPPER(Name) AS Name_Uppercase
FROM lifestyle_health;

------------------------------------------------------------

-- Display all names in lowercase

SELECT Name,
       LOWER(Name) AS Name_Lowercase
FROM lifestyle_health;

------------------------------------------------------------

-- Display the length of each person's name

SELECT Name,
       LENGTH(Name) AS Name_Length
FROM lifestyle_health;

------------------------------------------------------------

-- Display the first three letters of each name

SELECT Name,
       SUBSTR(Name, 1, 3) AS First_Three_Letters
FROM lifestyle_health;

------------------------------------------------------------

-- Replace Karnataka with KA

SELECT Name,
       State,
       REPLACE(State, 'Karnataka', 'KA') AS Short_State
FROM lifestyle_health;

------------------------------------------------------------

-- Remove extra spaces from names (if any)

SELECT Name,
       TRIM(Name) AS Clean_Name
FROM lifestyle_health;

------------------------------------------------------------

-- Display the first letter of each city

SELECT City,
       SUBSTR(City, 1, 1) AS First_Letter
FROM lifestyle_health;

------------------------------------------------------------

-- Combine name and occupation

SELECT Name || ' - ' || Occupation AS Person_Details
FROM lifestyle_health;

------------------------------------------------------------

-- Display city names in uppercase

SELECT City,
       UPPER(City) AS City_Uppercase
FROM lifestyle_health;

------------------------------------------------------------

-- Display occupation names in lowercase

SELECT Occupation,
       LOWER(Occupation) AS Occupation_Lowercase
FROM lifestyle_health;

-- ==========================================================
-- 11. SUBQUERIES
-- ==========================================================

-- Display people whose age is greater than the average age

SELECT Name,
       Age
FROM lifestyle_health
WHERE Age >
(
    SELECT AVG(Age)
    FROM lifestyle_health
);

------------------------------------------------------------

-- Display people whose BMI is greater than the average BMI

SELECT Name,
       BMI
FROM lifestyle_health
WHERE BMI >
(
    SELECT AVG(BMI)
    FROM lifestyle_health
);

------------------------------------------------------------

-- Display people whose Health Score is greater than the average Health Score

SELECT Name,
       Health_Score
FROM lifestyle_health
WHERE Health_Score >
(
    SELECT AVG(Health_Score)
    FROM lifestyle_health
);

------------------------------------------------------------

-- Display people whose Sleep Hours are less than the average Sleep Hours

SELECT Name,
       Sleep_Hours
FROM lifestyle_health
WHERE Sleep_Hours <
(
    SELECT AVG(Sleep_Hours)
    FROM lifestyle_health
);

------------------------------------------------------------

-- Display people whose Water Intake is greater than the average Water Intake

SELECT Name,
       Water_Intake_L
FROM lifestyle_health
WHERE Water_Intake_L >
(
    SELECT AVG(Water_Intake_L)
    FROM lifestyle_health
);

------------------------------------------------------------

-- Display people living in the city with the highest average Health Score

SELECT Name,
       City,
       Health_Score
FROM lifestyle_health
WHERE City =
(
    SELECT City
    FROM lifestyle_health
    GROUP BY City
    ORDER BY AVG(Health_Score) DESC
    LIMIT 1
);

------------------------------------------------------------

-- Display people whose cholesterol is higher than the average cholesterol

SELECT Name,
       Cholesterol
FROM lifestyle_health
WHERE Cholesterol >
(
    SELECT AVG(Cholesterol)
    FROM lifestyle_health
);

------------------------------------------------------------

-- Display people whose blood sugar is lower than the average blood sugar

SELECT Name,
       Blood_Sugar
FROM lifestyle_health
WHERE Blood_Sugar <
(
    SELECT AVG(Blood_Sugar)
    FROM lifestyle_health
);

------------------------------------------------------------

-- Display people whose resting heart rate is higher than the average

SELECT Name,
       Resting_Heart_Rate
FROM lifestyle_health
WHERE Resting_Heart_Rate >
(
    SELECT AVG(Resting_Heart_Rate)
    FROM lifestyle_health
);

------------------------------------------------------------

-- Display people whose screen time is greater than the average screen time

SELECT Name,
       Screen_Time_Hours
FROM lifestyle_health
WHERE Screen_Time_Hours >
(
    SELECT AVG(Screen_Time_Hours)
    FROM lifestyle_health
);



-- ==========================================================
-- 13. BUSINESS INSIGHT QUERIES
-- ==========================================================

-- 1. Top 10 healthiest people based on Health Score

SELECT Person_ID,
       Name,
       Health_Score
FROM lifestyle_health
ORDER BY Health_Score DESC
LIMIT 10;

------------------------------------------------------------

-- 2. Which city has the highest average Health Score?

SELECT City,
       ROUND(AVG(Health_Score),2) AS Average_Health_Score
FROM lifestyle_health
GROUP BY City
ORDER BY Average_Health_Score DESC;

------------------------------------------------------------

-- 3. Which occupation has the highest average BMI?

SELECT Occupation,
       ROUND(AVG(BMI),2) AS Average_BMI
FROM lifestyle_health
GROUP BY Occupation
ORDER BY Average_BMI DESC;

------------------------------------------------------------

-- 4. Average sleep hours by gender

SELECT Gender,
       ROUND(AVG(Sleep_Hours),2) AS Average_Sleep_Hours
FROM lifestyle_health
GROUP BY Gender;

------------------------------------------------------------

-- 5. Average stress level by occupation

SELECT Occupation,
       ROUND(AVG(Stress_Level),2) AS Average_Stress_Level
FROM lifestyle_health
GROUP BY Occupation
ORDER BY Average_Stress_Level DESC;

------------------------------------------------------------

-- 6. Disease Risk distribution

SELECT Disease_Risk,
       COUNT(*) AS Total_People
FROM lifestyle_health
GROUP BY Disease_Risk
ORDER BY Total_People DESC;

------------------------------------------------------------

-- 7. Average screen time by city

SELECT City,
       ROUND(AVG(Screen_Time_Hours),2) AS Average_Screen_Time
FROM lifestyle_health
GROUP BY City
ORDER BY Average_Screen_Time DESC;

------------------------------------------------------------

-- 8. Top 10 people with highest BMI

SELECT Person_ID,
       Name,
       BMI
FROM lifestyle_health
ORDER BY BMI DESC
LIMIT 10;

------------------------------------------------------------

-- 9. Average cholesterol by gender

SELECT Gender,
       ROUND(AVG(Cholesterol),2) AS Average_Cholesterol
FROM lifestyle_health
GROUP BY Gender;

------------------------------------------------------------

-- 10. Average blood sugar by Disease Risk

SELECT Disease_Risk,
       ROUND(AVG(Blood_Sugar),2) AS Average_Blood_Sugar
FROM lifestyle_health
GROUP BY Disease_Risk
ORDER BY Average_Blood_Sugar DESC;

------------------------------------------------------------

-- 11. Top 5 cities with highest average BMI

SELECT City,
       ROUND(AVG(BMI),2) AS Average_BMI
FROM lifestyle_health
GROUP BY City
ORDER BY Average_BMI DESC
LIMIT 5;

------------------------------------------------------------

-- 12. Occupations having average Health Score greater than 75

SELECT Occupation,
       ROUND(AVG(Health_Score),2) AS Average_Health_Score
FROM lifestyle_health
GROUP BY Occupation
HAVING AVG(Health_Score) > 75
ORDER BY Average_Health_Score DESC;

------------------------------------------------------------

-- 13. People with Health Score above the overall average

SELECT Name,
       Health_Score
FROM lifestyle_health
WHERE Health_Score >
(
    SELECT AVG(Health_Score)
    FROM lifestyle_health
);

------------------------------------------------------------

-- 14. Cities with more than 100 people

SELECT City,
       COUNT(*) AS Total_People
FROM lifestyle_health
GROUP BY City
HAVING COUNT(*) > 100
ORDER BY Total_People DESC;

------------------------------------------------------------

-- 15. Average Health Score by Age Group

SELECT Age_Group,
       ROUND(AVG(Health_Score),2) AS Average_Health_Score
FROM lifestyle_health
GROUP BY Age_Group
ORDER BY Average_Health_Score DESC;