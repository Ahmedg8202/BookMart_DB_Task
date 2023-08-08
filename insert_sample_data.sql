use BookMart;

--insert some samples into customers table
insert into customers(customer_id,first_name, last_name, email, phone)
values (1,'ahmed','gamal','ag@gmail.com','+201235763621'),
		(2,'omer','ali','og@gmail.com','+201235762519'),
		(3,'mosatfa','gamal','mg@gmail.com','+201235769650'),
		(4,'sara','gamal','sg@gmail.com','+201235764009'),
		(5,'zyad','gamal','zg@gmail.com','+201235761234')

--insert some samples into books table
insert into books(book_id,title,auther,genre,price)
values (1,'one','mahmoud','drama',100),
		(2,'two','mohamed','history',200),
		(3,'three','fatma','fantacy',300),
		(4,'four','zoza','Mystery',400),
		(5,'five','eman','Literary',500)

--insert some samples into orders table
insert into orders(order_id,order_date,customer_id,book_id)
values  (9,'2023-08-14',5,5),
		(10,'2023-08-15',3,4),
		(11,'2023-08-16',4,1),
		(12,'2023-08-17',5,3),
		(13,'2023-08-18',1,5)