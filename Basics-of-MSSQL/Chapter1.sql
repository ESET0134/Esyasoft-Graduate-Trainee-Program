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

--Show all records from all tables

SELECT o.order_no, u.user_id, b.product_id, u.email, u.name, b.title, b.price FROM orders o 
INNER JOIN users u ON u.user_id = o.user_id
INNER JOIN books b ON b.product_id = o.product_id;

--Show records from all tables where books title is Black Magic

SELECT o.order_no, u.user_id, b.product_id, u.email, u.name, b.title, b.price FROM orders o 
INNER JOIN users u ON u.user_id = o.user_id
INNER JOIN books b ON b.product_id = o.product_id
WHERE b.title = 'Black Magic';

--Show records from all tables to know who has bought the book with highest price

SELECT o.order_no, u.user_id, b.product_id, u.email, u.name, b.title, b.price FROM orders o 
INNER JOIN users u ON u.user_id = o.user_id
INNER JOIN books b ON b.product_id = o.product_id
WHERE b.price = (SELECT MAX(b.price) FROM books b);