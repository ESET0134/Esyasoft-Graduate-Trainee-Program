USE Employee;

CREATE TABLE Students2024 (ID INT, Name VARCHAR(50));

CREATE TABLE Students2025 (ID INT, Name VARCHAR(50));

INSERT INTO Students2024 VALUES
(1,'Ravi'),(2,'Asha'),(3,'John'),(4,'Meera'),(5,'Kiran'),
(6,'Divya'),(7,'Lokesh'),(8,'Anita'),(9,'Rahul'),(10,'Sneha');

INSERT INTO Students2025 VALUES
(2,'Asha'),(4,'Meera'),(5,'Kiran'),(11,'Prakash'),(12,'Vidya'),
(13,'Neha'),(14,'Manoj'),(15,'Ramesh'),(16,'Lata'),(17,'Akash');

CREATE TABLE Employees (EmpID INT, Name VARCHAR(50), Department VARCHAR(20));

INSERT INTO Employees VALUES 
(1,'Ananya','HR'),(2,'Ravi','IT'),(3,'Meera','Finance'),
(4,'John','IT'),(5,'Divya','Marketing'),(6,'Sneha','Finance'),
(7,'Lokesh','HR'),(8,'Asha','IT'),(9,'Kiran','Finance'),(10,'Rahul','Sales');

CREATE TABLE Projects (ProjectID INT, Name VARCHAR(50), StartDate DATE, EndDate DATE);

INSERT INTO Projects VALUES 
(1,'Bank App','2025-01-01','2025-03-15'),
(2,'E-Commerce','2025-02-10','2025-05-20');

CREATE TABLE Contacts (ID INT, Name VARCHAR(50), Email VARCHAR(50), Phone VARCHAR(20));

INSERT INTO Contacts VALUES
(1,'Ravi','ravi@gmail.com',NULL),
(2,'Asha',NULL,'9876543210'),
(3,'John',NULL,NULL);

SELECT * FROM Employees
SELECT * FROM Students2024
SELECT * FROM Students2025
SELECT * FROM Projects
SELECT * FROM Contacts

--Unique Union
SELECT Name FROM Students2024 UNION SELECT Name FROM Students2025;

--Duplicates Union
SELECT Name FROM Students2024 UNION ALL SELECT Name FROM Students2025;

-- UPPERCASE and LOWERCASE
SELECT Name, UPPER(Name) AS UppercaseName, LOWER(Name) AS LowercaseName FROM Employees;

--Length of Name
SELECT Name, LEN(Name) AS LengthName FROM Employees;

--Show 1st 3 letters of each name
SELECT SUBSTRING(Name,1,3) AS SubName FROM Employees;

--Replace Department Name
SELECT EmpID, Name, REPLACE(Department, 'Finance', 'Accounts') AS Dept FROM Employees;

--Concat
SELECT EmpID, Name, Department, CONCAT(Name, '-', Department) AS Name_Department FROM Employees;

--Todays Date
SELECT GETDATE() AS TodaysDate;

--Datediff
SELECT ProjectID, Name, StartDate, EndDate , DATEDIFF(day, StartDate, EndDate) AS Duration FROM Projects;

--Dateadd
SELECT ProjectID, Name, StartDate, DATEADD(day, 10, EndDate) AS NewEndDate FROM Projects;

--Days Left
SELECT ProjectID, Name, StartDate, EndDate , DATEDIFF(day, EndDate, GETDATE()) AS DaysLeft FROM Projects;

--Convert
SELECT CONVERT(VARCHAR(10), GETDATE(), 103) AS Date;

--Cast
SELECT CAST(123.456 AS INT) AS Casting;

--Categorize
SELECT Name, Department,
    CASE
        WHEN Department = 'IT' THEN 'Tech Team'
        WHEN Department = 'HR' THEN 'Human Resources'
        ELSE 'Other'
    END AS Team
FROM Employees;
