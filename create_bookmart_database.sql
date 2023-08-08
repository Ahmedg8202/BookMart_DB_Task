create database BookMart;
use BookMart;
create table customers(
	customer_id int,
	first_name varchar(15) not null,
	last_name varchar(15) not null,
	email varchar(25) not null,
	phone varchar(13),
--constraint
constraint customers_pk primary key (customer_id),
constraint customers_un unique (phone)
);

create table books(
	book_id int,
	title varchar(15) not null,
	auther varchar(25) not null,
	genre varchar(10) not null,
	price int not null,
--constraint
constraint book_pk primary key (book_id)
);


create table orders(
	order_id int,
	order_date date not null,
	customer_id int not null,
	book_id int not null,
--constraint
constraint orders_pk primary key (order_id),
constraint orders_customers_fk foreign key (customer_id)
references customers (customer_id),
constraint orders_books_fk foreign key (book_id)
references books (book_id),
);
