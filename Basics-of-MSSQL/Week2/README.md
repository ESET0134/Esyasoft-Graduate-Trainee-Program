# WEEK 2

### Assignment 1

TASK:

1. Find all books, all users and all orders
2. Find all orders
3. Find particular user who has ordered the book with product_id = 103
4. Find books which a user with user_id = 2 has ordered
5. Find the total amount a user has spent on books
6. Find the user who spent the most i.e most valuable user
7. Find the range of books from price high to low
8. Find the book which has highest price
9. Find the book which is cheapest
10. Find the newly added books

### Assignment 2

Task:

Find the top 2 most expensive books purchased by each user.
Use joins (orders → books → users)
Apply ROW_NUMBER(), RANK(), and DENSE_RANK() with PARTITION BY user id and ORDER BY price DESC

Task:

Find how much each user spent in total and rank them
Use Sum(price) with PARTITION BY user id
Apply RANK() and DENSE_RANK() to order users by total spending.

### Assignment 3

1. Show a list of all student names (unique only).
2. Show a list of all student names (including duplicates).
3. Display employee names in UPPERCASE and LOWERCASE.
4. Find the length of each employee’s name.
5. Show only the first 3 letters of each name.
6. Replace Finance department with Accounts.
7. Create a new column showing "Name - Department" using CONCAT.
8. Show today’s date using GETDATE().
9. Find the duration (in days) of each project using DATEDIFF.
10. Add 10 days to each project’s EndDate using DATEADD.
11. Find how many days are left until each project ends. (Hint: Use DATEDIFF with GETDATE())
12. Convert today’s date into DD/MM/YYYY format using CONVERT.
13. Convert a float 123.456 into an integer using CAST.
14. For employees (from Employees table above), categorize them:
        
        If Dept = IT → show Tech Team
        If Dept = HR → show Human Resources
        Else → Other