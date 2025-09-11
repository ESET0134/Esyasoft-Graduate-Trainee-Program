# WEEK 2

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

Task:

Find the top 2 most expensive books purchased by each user.
Use joins (orders → books → users)
Apply ROW_NUMBER(), RANK(), and DENSE_RANK() with PARTITION BY user id and ORDER BY price DESC

Task:

Find how much each user spent in total and rank them
Use Sum(price) with PARTITION BY user id
Apply RANK() and DENSE_RANK() to order users by total spending.