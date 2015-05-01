CREATE TABLE products(
	id serial PRIMARY KEY,
	productname varchar(50),
	productdescription TEXT,
	productprice money,
	category varchar(50),
	datecrated timestamp DEFAULT current_timestamp
);

CREATE TABLE users(
	id serial PRIMARY KEY,
	name varchar(50),
	address varchar(100),
	city varchar(50),
	state varchar(2),
	zipcode TINYINT(9),
	telephone TINYINT(10),

)