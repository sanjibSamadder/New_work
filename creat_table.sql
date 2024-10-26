DROP TABLE if exists Customers_Expanded; 

CREATE table Customers_Expanded
(
	customer_id INT primary key,  -- Unique identifier for each customer
	customer_name varchar, -- Name of the customer, allowing up to 255 characters
	email varchar (255), -- Customer email address, up to 255 characters
	phone varchar (15), -- Customer phone number, stored as a string to preserve formatting
	address varchar(255)  -- Customer address, allowing up to 255 characters
);
	

COPY Customers_Expanded
FROM 'E:/SQL/Oder_Management/Customers_Expanded.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM Customers_Expanded;


