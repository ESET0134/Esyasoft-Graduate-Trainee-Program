# WEEK 1

Task 0: 
    
    Create Smart Meter Database Tables
    Objective: Create the database tables needed to store smart meter readings, and customer details
    Instructions: Write SQL CREATE TABLE statements to define the following two tables:
        
    1. Customers
        Customerld
        Name (customer name)
        Address
        Region (e.g., North, South, East, West)

    2. SmartMeterReadings
        Meterld
        Customerld
        Location (e.g., rooftop, basement)
        InstalledDate
        ReadingDateTime
        EnergyConsumed

Task1:
    
    Write a query to fetch all smart meter readings where:
        
        EnergyConsumed is between 10 and 50 kWh
        Reading DateTime is between '2024-01-01' and '2024-12-31'
        Exclude meters installed after '2024-06-30'

Task2:
    
    For each customer, calculate:
        Average energy consumed per reading
        Maximum energy consumed in a single reading.
        Only include readings from the current year.

Stretch Goal:

    Analyse smart meter readings with moderate filtering and grouping. Write a query to:
    For each meter, calculate:
        Total energy consumed during peak hours (6 PM to 10 PM)
        Number of readings recorded during that time
        Only include meters that:
            Have more than 10 readings in total
            Were installed before 2025-01-01
        Consider only readings from the current year