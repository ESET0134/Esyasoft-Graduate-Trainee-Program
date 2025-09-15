CREATE DATABASE Employee

USE Employee

CREATE TABLE Students2024 (ID INT, Name VARCHAR(50));
CREATE TABLE Students2025 (ID INT, Name VARCHAR(50));

INSERT INTO Students2024 VALUES
(1,'Ravi'),(2,'Asha'),(3,'John'),(4,'Meera'),(5,'Kiran'),
(6,'Divya'),(7,'Lokesh'),(8,'Anita'),(9,'Rahul'),(10,'Sneha');

INSERT INTO Students2025 VALUES
(2,'Asha'),(4,'Meera'),(5,'Kiran'),(11,'Prakash'),(12,'Vidya'),
(13,'Neha'),(14,'Manoj'),(15,'Ramesh'),(16,'Lata'),(17,'Akash');

CREATE TABLE Employees (EmpID INT, Name VARCHAR(50), Department VARCHAR(20), Salary INTEGER);

INSERT INTO Employees VALUES 
(1,'Ananya','HR', 20000),(2,'Ravi','IT', 25000),(3,'Meera','Finance', 30000),
(4,'John','IT', 40000),(5,'Divya','Marketing', 96000),(6,'Sneha','Finance', 45000),
(7,'Lokesh','HR', 50000),(8,'Asha','IT', 67000),(9,'Kiran','Finance', 89000),(10,'Rahul','Sales', 100000);

CREATE TABLE Projects (ProjectID INT, Name VARCHAR(50), StartDate DATE, EndDate DATE);
INSERT INTO Projects VALUES 
(1,'Bank App','2025-01-01','2025-03-15'),
(2,'E-Commerce','2025-02-10','2025-05-20');

CREATE TABLE Contacts (ID INT, Name VARCHAR(50), Email VARCHAR(50), Phone VARCHAR(20));
INSERT INTO Contacts VALUES
(1,'Ravi','ravi@gmail.com',NULL),
(2,'Asha',NULL,'9876543210'),
(3,'John',NULL,NULL);

SELECT * FROM Contacts;
SELECT * FROM Projects;
SELECT * FROM Employees;
SELECT * FROM Students2024;
SELECT * FROM Students2025;
DROP TABLE Employees;

SELECT * , ROW_NUMBER() OVER (ORDER BY EmpID DESC) AS EmpOrder,
RANK() OVER (PARTITION BY Department ORDER BY EmpID) AS Ranks,
DENSE_RANK() OVER (ORDER BY EmpID) AS DenseRank
FROM Employees;

CREATE PROCEDURE GetEmployeeDetails 
	@Department VARCHAR(30),
	@EmpID INT
AS
BEGIN
	SELECT * FROM Employees WHERE Department = @Department AND EmpID = @EmpID;
END;

DROP PROCEDURE GetEmployeeDetails;

EXEC GetEmployeeDetails @Department = 'HR', @EmpID = 7;


CREATE PROCEDURE CheckEmployeeSalary
	@EmpID VARCHAR(20)
AS
BEGIN
  BEGIN TRY
	DECLARE @Salary INT;

	SELECT @Salary = Salary
	FROM Employees
	WHERE EmpID = @EmpID;

	IF @Salary >= 60000
		PRINT 'High Salary Employee';
	ELSE IF @Salary >= 30000
		PRINT 'Medium Salary Employee';
	ELSE
		PRINT 'Low Salary Employee';
  END TRY
  BEGIN CATCH
	PRINT 'Error Occured: ' + ERROR_MESSAGE();
  END CATCH
END;

DROP PROCEDURE CheckEmployeeSalary;

EXEC CheckEmployeeSalary @EmpID = 'SHRUTI';
EXEC CheckEmployeeSalary @EmpID = 2;