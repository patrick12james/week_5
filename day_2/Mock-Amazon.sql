-- Create a customer table
create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(100),
	address VARCHAR(100),
	email VARCHAR(100),
	prime_member boolean
	
);

select * from customer;

-- Create order table
create table order__(
	order_id SERIAL primary key,
	order_date DATE DEFAULT current_date,
	total numeric(7,2),
	customer_id integer not null, -- not null means this collumn cannot be empty
	foreign key(customer_id) references customer(customer_id)
	--FOreign key(column_in_domestic_table) references foreign_table(column_in_foreign_table)
);

select * from order__;

--Create an order product table
create table order_product(
	order_product_id SERIAL primary key,
	order_id integer not null,
	foreign key(order_id) references order__(order_id),
	prod_id integer not null
);

--Create product table
create table product(
	prod_id SERIAL primary key,
	prod_name VARCHAR(50),
	description VARCHAR(200),
	price numeric(5,2),
	rating numeric(2,1),
	seller_id integer not null
);

--Add foreign key to the order_product table referenceing product
alter table order_product 
add foreign key(prod_id) references product(prod_id);



--Create a seller table
create table seller(
	seller_id SERIAL primary key,
	brand VARCHAR(50),
	email VARCHAR(100)
);


--ADD foreign key to the product table referncing seller
alter table product 
add foreign key(seller_id) references seller(seller_id);


--Rename the email column in the seller table to email_address
alter table seller 
rename column email to email_address;


--Add phone number column to seller
alter table seller 
add phone_number VARCHAR(10);


--Rename seller table to to brand
alter table seller 
rename to brand;


-- CREATE A TEST TABLE
create table test(
	test_id SERIAL primary key,
	column_1 INTEGER,
	column_2 VARCHAR(20)
);

-- Remove a column from a table
alter table test 
drop column column_2;


-- Remove a table completely
drop table if exists test;