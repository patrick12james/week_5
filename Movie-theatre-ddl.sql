-- Create a customer table
create table customer(
	customer_id SERIAL primary key,
	first_name varchar(50),
	last_name varchar(50),
);


select * from customer;


-- Create a ticket table
create table ticket(
	ticket_id SERIAL primary key,
	ticket_price numeric(3,2),
	ticket_quantity integer
	customer_id integer not null, -- not null means that this column cannot be empty
	foreign key(customer_id) references customer(customer_id)
	-- FOREIGN KEY(column_in_domestic_table) REFERENCES foreign_table(column_in_foreign_table)
);

select * from ticket;


-- Create a movie table
create table movie(
	movie_id SERIAL primary key,
	movie_name varchar(30),
	movie_length numeric(3,2)
	ticket_id integer not null,
	foreign key(ticket_id) references ticket(ticket_id),
);



-- Create concession table
create table concession(
	concession_id SERIAL primary key,
	concession_name varchar(50),
	concession_price numeric(3,2),
	customer_id integer not null
	foreign key(customer_id) references customer,
);