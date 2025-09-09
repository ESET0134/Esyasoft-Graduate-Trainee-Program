CREATE DATABASE SmartMeterDB;

USE SmartMeterDB;

CREATE TABLE Customers (
CustomerId INT PRIMARY KEY,
Name VARCHAR(100),
Address VARCHAR(200),
Region VARCHAR(50),
CONSTRAINT check_region CHECK (Region IN ('North', 'South', 'East', 'West'))
);

CREATE TABLE SmartMeterReadings (
ReadingId INT PRIMARY KEY IDENTITY(1,1),
MeterId INT,
CustomerId INT,
Location VARCHAR(100),
InstalledDate DATE,
ReadingDateTime DATETIME,
EnergyConsumed DECIMAL(10,2),
FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId)
);

INSERT INTO Customers (CustomerId, Name, Address, Region)
VALUES
(101, 'Alice Johnson', '123 Green St, CityA', 'North'),
(102, 'Bob Smith', '456 River Rd, CityB', 'South'),
(103, 'Charlie Lee', '789 Hill Ave, CityC', 'East'),
(104, 'Diana Brown', '321 Lake Blvd, CityD', 'West'),
(105, 'Ethan White', '654 Park Lane, CityE', 'North');

INSERT INTO SmartMeterReadings (MeterId, CustomerId, Location, InstalledDate, ReadingDateTime, EnergyConsumed)
VALUES
(301, 101, 'Rooftop', '2024-01-15', '2024-03-15 10:00:00', 15.50),
(305, 101, 'Basement', '2024-05-10', '2024-06-20 14:30:00', 45.00),
(302, 101, 'Rooftop', '2023-12-10', '2025-02-05 09:00:00', 20.00),
(303, 101, 'Rooftop', '2024-01-05', '2025-02-06 12:00:00', 45.00),
(304, 101, 'Basement', '2023-06-30', '2025-02-07 15:00:00', 22.00),
(306, 105, 'Rooftop', '2024-02-20', '2025-02-08 11:00:00', 18.00),
(307, 105, 'Basement', '2024-03-25', '2025-02-09 13:00:00', 33.50),
(310, 105, 'Rooftop', '2024-05-01', '2025-01-10 18:30:00', 20.00),
(310, 105, 'Rooftop', '2024-05-01', '2025-01-11 19:15:00', 25.00),
(310, 105, 'Rooftop', '2024-05-01', '2025-01-12 20:05:00', 22.50),
(310, 105, 'Rooftop', '2024-05-01', '2025-01-13 18:50:00', 24.00),
(310, 105, 'Rooftop', '2024-05-01', '2025-01-14 19:40:00', 21.00),
(310, 105, 'Rooftop', '2024-05-01', '2025-01-15 20:20:00', 27.00),
(310, 105, 'Rooftop', '2024-05-01', '2025-01-16 18:10:00', 26.00),
(310, 105, 'Rooftop', '2024-05-01', '2025-01-17 19:55:00', 29.00),
(310, 105, 'Rooftop', '2024-05-01', '2025-01-18 20:30:00', 30.00),
(310, 105, 'Rooftop', '2024-05-01', '2025-01-19 18:25:00', 23.50),
(310, 105, 'Rooftop', '2024-05-01', '2025-01-20 19:05:00', 28.00),
(310, 105, 'Rooftop', '2024-05-01', '2025-01-21 20:45:00', 32.00);

SELECT * FROM Customers;

SELECT * FROM SmartMeterReadings;

-- TASK 1

SELECT MeterId, ReadingDateTime, EnergyConsumed FROM SmartMeterReadings WHERE 
EnergyConsumed BETWEEN 10 AND 50
AND ReadingDateTime BETWEEN '2024-01-01' AND '2024-12-31'
AND InstalledDate <= '2024-06-30';

-- TASK 2

SELECT CustomerId, AVG(EnergyConsumed) AS AvgEnergyConsumed, MAX(EnergyConsumed) AS MaxEnergyConsumed
FROM SmartMeterReadings WHERE 
YEAR(ReadingDateTime) = YEAR(GETDATE())
GROUP BY CustomerId;

-- STRETCH GOALS

SELECT MeterId, SUM(EnergyConsumed) AS TotalPeakEnergy, COUNT(*) AS PeakReadings
FROM SmartMeterReadings WHERE 
YEAR(ReadingDateTime) = YEAR(GETDATE())
AND InstalledDate < '2025-01-01'
AND DATEPART(HOUR, ReadingDateTime) BETWEEN 18 AND 21
AND MeterId IN (
	SELECT MeterId FROM SmartMeterReadings GROUP BY MeterId HAVING COUNT(*) > 10
)
GROUP BY MeterId;

-- CLEAR

DROP TABLE Customers;

DROP TABLE SmartMeterReadings;

DROP DATABASE SmartMeterDB;