use BookMart;

--retrieve the first and last names of all customers
select first_name, last_name
from customers;

--fetch the titles and authors of all books
select title, auther
from books;

--find the total number of orders placed
select max(order_id) as total_number_of_orders_placed
from orders;

--get the email and phone number of the customer with CustomerID 2
select email, phone
from customers
where customer_id = 2;

--get all orders along with the corresponding customer's first name and the book title
select order_id, order_date, o.customer_id, c.first_name, c.last_name
from orders as o join customers as c on o.customer_id = c.customer_id;

--find the total sales amount (sum of all book prices) for each order
select order_id, price
from orders as o, books
where o.book_id = books.book_id;

--retrieve all customers who haven't placed any orders
select customers.customer_id,first_name, last_name,email
from customers
--get who palce order first then get to not exists
where not exists(
	select first_name, last_name, order_id, order_date
	from orders
	where customers.customer_id = orders.customer_id
);

--get all book titles and their corresponding genres for books that have been ordered
--use 'distinct' to get title and genre values without repeating 
select title, genre
from books join orders on books.book_id = orders.book_id;

--get the titles of books that have not been ordered
--not working
select title
from books
where books.title not in (
	select distinct title
	from books b  join orders o on b.book_id = o.book_id 
);