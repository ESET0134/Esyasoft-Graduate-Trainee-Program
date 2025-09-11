--Create and use database

CREATE DATABASE Users;

USE Users;

--Create Users Table

CREATE TABLE Users (
    user_id INTEGER PRIMARY KEY, 
    email VARCHAR(20) UNIQUE,
	name VARCHAR(50),
);

--Create books Table

CREATE TABLE books (
    product_id INTEGER PRIMARY KEY, 
    title VARCHAR(50),
	price FLOAT,
);

--Create orders Table

CREATE TABLE orders (
    order_no INTEGER PRIMARY KEY, 
    user_id INTEGER,
	product_id INTEGER,
	FOREIGN KEY (user_id) REFERENCES Users(user_id),
	FOREIGN KEY (product_id) REFERENCES books(product_id)
);

--Insert Values into Users

INSERT INTO Users (user_id, email, name)
VALUES (1,'callmebhai@gmail.com' , 'Gopal Bhai'),
(2,'toxicManji@gmail.com' , 'Manjit'),
(3,'kalajadu@gmail.com' , 'Soumyadeep'),
(4,'vimalpan@gmail.com' , 'Jai Sai'),
(5,'ghostlaugh@gmail.com' , 'Namitha');

--Insert Values into books

INSERT INTO books (product_id, title, price)
VALUES (101, 'MSSQL', 100.00),
(102, 'Half Girlfriend', 699.00),
(103, 'Black Magic', 700.00),
(104, 'How to Marfa', 2000.00),
(105, 'How to Laugh', 2001.99);

--Insert Values into orders

INSERT INTO orders (order_no, user_id, product_id)
VALUES (401, 1, 101),
(402, 2, 102),
(403, 2, 103),
(404, 3, 103),
(405, 3, 104),
(406, 4, 104),
(407, 5, 105),
(408, 5, 102);

SELECT * FROM Users;

SELECT * FROM books;

SELECT * FROM orders;

--TASK 1 (Find all books, all users and all orders)

SELECT o.order_no, u.user_id, b.product_id, u.email, u.name, b.title, b.price FROM orders o 
INNER JOIN users u ON u.user_id = o.user_id
INNER JOIN books b ON b.product_id = o.product_id;

--TASK 2 (Find all orders)

SELECT o.order_no, u.name, b.title, b.price FROM orders o 
INNER JOIN users u ON u.user_id = o.user_id
INNER JOIN books b ON b.product_id = o.product_id;

--TASK 3 (Find particular user who has ordered the book with product_id = 103)

SELECT u.user_id, u.name, u.email FROM Users u
JOIN orders o ON u.user_id = o.user_id
WHERE o.product_id = 103;

--TASK 4 (Find books which a user with user_id = 2 has ordered)

SELECT b.title, b.price FROM orders o
JOIN books b ON o.product_id = b.product_id
WHERE o.user_id = 2;

--Task 5 (Find the total amount a user has spent on books)

SELECT u.name, SUM(b.price) AS Total_Spent FROM Users u
JOIN orders o ON u.user_id = o.user_id
JOIN books b ON b.product_id = o.product_id
GROUP BY u.name;

--TASK 6 (Find the user who spent the most i.e most valuable user)

SELECT TOP 1 u.name, SUM(b.price) AS Total_Spent FROM Users u
JOIN orders o ON u.user_id = o.user_id
JOIN books b ON b.product_id = o.product_id
GROUP BY u.name
ORDER BY Total_Spent DESC;

--TASK 7 (Find the range of books from price high to low)

SELECT * FROM books ORDER BY price DESC;

--TASK 8 (Find the book which has highest price)

SELECT TOP 1 * FROM books ORDER BY price DESC;

--TASK 9 (Find the book which is cheapest)

SELECT TOP 1 * FROM books ORDER BY price;

--TASK 10 (Find the newly added books)

SELECT * FROM books ORDER BY product_id DESC;