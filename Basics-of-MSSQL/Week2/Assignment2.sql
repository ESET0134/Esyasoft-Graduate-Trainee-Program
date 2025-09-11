USE Users;

SELECT * FROM Users;

SELECT * FROM books;

SELECT * FROM orders;

-- Find the top 2 most expensive books purchased by each user

With Ranks AS(
SELECT u.user_id, u.name, b.title, b.price, 
ROW_NUMBER() OVER (PARTITION BY u.user_id ORDER BY b.price DESC) AS row_num,
RANK() OVER (PARTITION BY u.user_id ORDER BY b.price DESC) AS rank,
DENSE_RANK() OVER (PARTITION BY u.user_id ORDER BY b.price DESC) AS dense_rank
FROM orders o 
JOIN books b ON b.product_id = o.product_id
JOIN Users u ON u.user_id = o.user_id) 
SELECT * FROM Ranks WHERE row_num <=2;

-- Find how much each user spent in total and rank them

SELECT u.user_id, u.name, 
SUM(b.price) AS total_spent,
RANK() OVER (ORDER BY SUM(b.price) DESC) AS rank,
DENSE_RANK() OVER (ORDER BY SUM(b.price) DESC) AS dense_rank
FROM orders o
JOIN books b ON b.product_id = o.product_id
JOIN Users u ON u.user_id = o.user_id
GROUP BY u.user_id, u.name
ORDER BY total_spent DESC;