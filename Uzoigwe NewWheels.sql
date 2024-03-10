/*

-----------------------------------------------------------------------------------------------------------------------------------
                                               Guidelines
-----------------------------------------------------------------------------------------------------------------------------------

The provided document is a guide for the project. Follow the instructions and take the necessary steps to finish
the project in the SQL file			
-----------------------------------------------------------------------------------------------------------------------------------

											Database Creation
                                               
-----------------------------------------------------------------------------------------------------------------------------------
*/

-- [1] To begin with the project, you need to create the database first
-- Write the Query below to create a Database
CREATE DATABASE vehdb;--Here, we are creating a database called 'vehdb'.

-- [2] Now, after creating the database, you need to tell MYSQL which database is to be used.
-- Write the Query below to call your Database
USE vehdb; --Here, we are selecting the name of the database to be used and making it the default database to be used by mysql workbench, in this case vehdb is made the default database

/*-----------------------------------------------------------------------------------------------------------------------------------

                                               Tables Creation
                                               
-----------------------------------------------------------------------------------------------------------------------------------*/

-- [3] Creating the tables:

/*Note:
---> To create the table, refer to the ER diagram and the solution architecture. 
---> Refer to the column names along with the data type while creating a table from the ER diagram.
---> If needed revisit the videos Week 2: Data Modeling and Architecture: Creating DDLs for Your Main Dataset and Normalized Datasets
---> While creating a table, make sure the column you assign as a primary key should uniquely identify each row.
---> If needed revisit the codes used to create tables for the gl_eats database. 
     This will help in getting a better understanding of table creation.*/

-- Syntax to create table-

-- To drop the table if already exists
DROP TABLE IF EXISTS temp_t; -- Change the name of table_name to the name you have given.                             


-- To create a table- 
-- To create a table- 
--Here the table temp_t which is the temporary table for loading weekly data was created,31 coloumns were defined along with their respective datatypes
--Multiple keys were created which are the shipper id,product id, customer id and order id. the table was also made to drop (or delete), just in case if it exists already in the database.  
CREATE TABLE temp_t (
	SHIPPER_ID INTEGER,
	SHIPPER_NAME VARCHAR(50),
	SHIPPER_CONTACT_DETAILS VARCHAR(30),
	PRODUCT_ID INTEGER,
	VEHICLE_MAKER VARCHAR(60),
	VEHICLE_MODEL VARCHAR(60),
	VEHICLE_COLOR VARCHAR(60),
	VEHICLE_MODEL_YEAR INTEGER,
	VEHICLE_PRICE DECIMAL(14,2),
	QUANTITY INTEGER,
	DISCOUNT DECIMAL(4,2),
	CUSTOMER_ID VARCHAR(25),
	CUSTOMER_NAME VARCHAR(25),
	GENDER VARCHAR(15),
	JOB_TITLE VARCHAR(50),
	PHONE_NUMBER VARCHAR(20),
	EMAIL_ADDRESS VARCHAR(50),
	CITY VARCHAR(25),
	COUNTRY VARCHAR(40),
	STATE VARCHAR(40),
	CUSTOMER_ADDRESS VARCHAR(50),
	ORDER_DATE DATE,
	ORDER_ID VARCHAR(25),
	SHIP_DATE DATE,
	SHIP_MODE VARCHAR(25),
	SHIPPING VARCHAR(30),
	POSTAL_CODE INTEGER,
	CREDIT_CARD_TYPE VARCHAR(40),
	CREDIT_CARD_NUMBER BIGINT,
	CUSTOMER_FEEDBACK VARCHAR(20),
	QUARTER_NUMBER INTEGER,
	PRIMARY KEY (SHIPPER_ID,PRODUCT_ID,CUSTOMER_ID,ORDER_ID)
);
/*In the code above
1. The SQL code creates a new table named 'temp_t' with multiple columns of varying data types. 
These columns are designed to store information related to shipping, products, vehicles, customers, orders, and more.
2. The table includes primary key constraints on four columns: 'SHIPPER_ID,' 'PRODUCT_ID,' 'CUSTOMER_ID,' and 'ORDER_ID,' 
ensuring that each combination of values in these columns is unique within the table. 
This primary key is used to uniquely identify records within the table.
3. The 'temp_t' table is intended to organize and store data related to various aspects of business operations, 
such as shipping, customer information, and order details.*/

-- DROP TABLE temp_t;
--creating the vehicles table which is the main table
--The table vehicles_t which is the main table for loading quaterly data was created,31 coloumns were defined along with their respective datatypes
--Multiple keys were created which are the shipper id,product id, customer id and order id. the table was also made to drop (or delete), just in case if it exists already in the database. 
DROP TABLE IF EXISTS vehicles_t;
CREATE TABLE vehicles_t(
	SHIPPER_ID INTEGER,
	SHIPPER_NAME VARCHAR(50),
	SHIPPER_CONTACT_DETAILS VARCHAR(30),
	PRODUCT_ID INTEGER,
	VEHICLE_MAKER VARCHAR(60),
	VEHICLE_MODEL VARCHAR(60),
	VEHICLE_COLOR VARCHAR(60),
	VEHICLE_MODEL_YEAR INTEGER,
	VEHICLE_PRICE DECIMAL(14,2),
	QUANTITY INTEGER,
	DISCOUNT DECIMAL(4,2),
	CUSTOMER_ID VARCHAR(25),
	CUSTOMER_NAME VARCHAR(25),
	GENDER VARCHAR(15),
	JOB_TITLE VARCHAR(50),
	PHONE_NUMBER VARCHAR(20),
	EMAIL_ADDRESS VARCHAR(50),
	CITY VARCHAR(25),
	COUNTRY VARCHAR(40),
	STATE VARCHAR(40),
	CUSTOMER_ADDRESS VARCHAR(50),
	ORDER_DATE DATE,
	ORDER_ID VARCHAR(25),
	SHIP_DATE DATE,
	SHIP_MODE VARCHAR(25),
	SHIPPING VARCHAR(30),
	POSTAL_CODE INTEGER,
	CREDIT_CARD_TYPE VARCHAR(40),
	CREDIT_CARD_NUMBER BIGINT,
	CUSTOMER_FEEDBACK VARCHAR(20),
	QUARTER_NUMBER INTEGER,
	PRIMARY KEY (SHIPPER_ID,PRODUCT_ID,CUSTOMER_ID,ORDER_ID)
);

/*In the code above
1. The SQL code first checks if a table named 'vehicles_t' exists. If it does, it is dropped to prepare for the creation of a new table.
2. A new table named 'vehicles_t' is then created with a set of columns, each designed to store specific types of information related to shipping,
 products, vehicles, customers, orders, and more.
3. The table is defined with a primary key constraint on four columns: 'SHIPPER_ID,' 'PRODUCT_ID,' 'CUSTOMER_ID,' and 'ORDER_ID,' 
ensuring that each combination of values in these columns is unique within the table.
4. Overall, the 'vehicles_t' table is intended to organize and store data related to various aspects of business operations, 
 including shipping, customer information, and order details.*/
 
DROP TABLE IF EXISTS shipper_t;
	CREATE TABLE shipper_t (
		SHIPPER_ID INTEGER,
		SHIPPER_NAME VARCHAR(50),
		SHIPPER_CONTACT_DETAILS VARCHAR (30),
		PRIMARY KEY (SHIPPER_ID)
	);
/*In the code above
1. The SQL code first checks if a table named 'shipper_t' exists. If it does, it is dropped to prepare for the creation of a new table.
2. A new table named 'shipper_t' is then created with three columns: 'SHIPPER_ID,' 'SHIPPER_NAME,' and 'SHIPPER_CONTACT_DETAILS.'
 These columns are designed to store information related to shippers and their contact details
3. The 'SHIPPER_ID' column is defined as an INTEGER and serves as the primary key for the table. 
This primary key constraint ensures that each shipper's ID is unique within the table.
4. The 'shipper_t' table is intended to organize and store data related to shippers and their contact information.*/

DROP TABLE IF EXISTS product_t;
CREATE TABLE product_t (
	PRODUCT_ID INTEGER,
	VEHICLE_MAKER VARCHAR(60),
	VEHICLE_MODEL VARCHAR(60),
	VEHICLE_COLOR VARCHAR(60),
	VEHICLE_MODEL_YEAR INTEGER,
	VEHICLE_PRICE DECIMAL(14,2),
	PRIMARY KEY (PRODUCT_ID)
);
/*In the code above
1. The SQL code first checks if a table named 'product_t' exists. If it does, it is dropped to prepare for the creation of a new table.
2. A new table named 'product_t' is then created with several columns, including 'PRODUCT_ID,' 'VEHICLE_MAKER,' 'VEHICLE_MODEL,' 'VEHICLE_COLOR,' 'VEHICLE_MODEL_YEAR,' and 'VEHICLE_PRICE.' 
These columns are designed to store information related to products, specifically vehicle-related details such as maker, model, color, model year, and price.
3. The 'PRODUCT_ID' column is defined as an INTEGER and serves as the primary key for the table. This primary key constraint ensures that each product's ID is unique within the table.
4. The 'product_t' table is intended to organize and store data related to products, particularly vehicle-related information.*/

DROP TABLE IF EXISTS order_t;
CREATE TABLE order_t (
	ORDER_ID VARCHAR(25),
	CUSTOMER_ID VARCHAR(25),
	SHIPPER_ID INTEGER,
	PRODUCT_ID INTEGER,
	QUANTITY INTEGER,
	VEHICLE_PRICE DECIMAL(10,2),
	ORDER_DATE DATE,
	SHIP_DATE DATE,
	DISCOUNT DECIMAL(4,2),
	SHIP_MODE VARCHAR(25),
	SHIPPING VARCHAR(30),
	CUSTOMER_FEEDBACK VARCHAR(20),
	QUARTER_NUMBER INTEGER,
	PRIMARY KEY (ORDER_ID)
);
/*In the code above
1. The SQL code first checks if a table named 'order_t' exists. If it does, it is dropped to prepare for the creation of a new table.
2. A new table named 'order_t' is then created with multiple columns, including 'ORDER_ID,' 'CUSTOMER_ID,' 'SHIPPER_ID,' 'PRODUCT_ID,' 'QUANTITY,' 'VEHICLE_PRICE,' 'ORDER_DATE,' 'SHIP_DATE,' 'DISCOUNT,' 'SHIP_MODE,' 'SHIPPING,' 'CUSTOMER_FEEDBACK,' and 'QUARTER_NUMBER.' 
These columns are designed to store information related to customer orders, including details about the products ordered, shipping, and feedback.
3.The 'ORDER_ID' column is defined as VARCHAR(25) and serves as the primary key for the table. This primary key constraint ensures that each order's ID is unique within the table.
4. The 'order_t' table is intended to organize and store data related to customer orders and associated information.*/

DROP TABLE IF EXISTS customer_t;
CREATE TABLE customer_t(
	CUSTOMER_ID VARCHAR(25),
	CUSTOMER_NAME VARCHAR(25),
	GENDER VARCHAR(15),
	JOB_TITLE VARCHAR(50),
	PHONE_NUMBER VARCHAR(20),
	EMAIL_ADDRESS VARCHAR(50),
	CITY VARCHAR(25),
	COUNTRY VARCHAR(40),
	STATE VARCHAR(40),
	CUSTOMER_ADDRESS VARCHAR(50),
	POSTAL_CODE INTEGER,
	CREDIT_CARD_TYPE VARCHAR(40),
	CREDIT_CARD_NUMBER BIGINT,
	PRIMARY KEY (CUSTOMER_ID)
);

/*In the code above
1. The SQL code first checks if a table named 'customer_t' exists. If it does, it is dropped to prepare for the creation of a new table.
2. A new table named 'customer_t' is then created with multiple columns, including 'CUSTOMER_ID,' 'CUSTOMER_NAME,' 'GENDER,' 'JOB_TITLE,' 'PHONE_NUMBER,' 'EMAIL_ADDRESS,' 'CITY,' 'COUNTRY,' 'STATE,' 
'CUSTOMER_ADDRESS,' 'POSTAL_CODE,' 'CREDIT_CARD_TYPE,' and 'CREDIT_CARD_NUMBER.' 
These columns are designed to store information related to customers, including personal details, contact information, and payment details.
3.The 'CUSTOMER_ID' column is defined as VARCHAR(25) and serves as the primary key for the table. This primary key constraint ensures that each customer's ID is unique within the table.
4. The 'customer_t' table is intended to organize and store data related to customers and their associated information.*/
	
	




/*-----------------------------------------------------------------------------------------------------------------------------------

                                               Stored Procedures Creation
                                               
-----------------------------------------------------------------------------------------------------------------------------------*/

-- [4] Creating the Stored Procedures:

/*Note:

---> If needed revisit the video: Week 2: Data Modeling and Architecture: Introduction to Stored Procedures.
---> Also revisit the codes used to create stored procedures for the gl_eats database. 
	 This will help in getting a better understanding of the creation of stored procedures.*/

-- Syntax to create stored procedure-

-- To drop the stored procedure if already exists- 
DROP PROCEDURE IF EXISTS vehicles_p;

-- Syntax to create a stored procedure-
DELIMITER $$
CREATE PROCEDURE vehicles_p()
BEGIN
	INSERT INTO vehicles_t (
	SHIPPER_ID ,
	SHIPPER_NAME,
	SHIPPER_CONTACT_DETAILS,
	PRODUCT_ID,
	VEHICLE_MAKER,
	VEHICLE_MODEL,
	VEHICLE_COLOR,
	VEHICLE_MODEL_YEAR,
	VEHICLE_PRICE,
	QUANTITY,
	DISCOUNT,
	CUSTOMER_ID,
	CUSTOMER_NAME,
	GENDER,
	JOB_TITLE,
	PHONE_NUMBER,
	EMAIL_ADDRESS,
	CITY,
	COUNTRY,
	STATE,
	CUSTOMER_ADDRESS,
	ORDER_DATE,
	ORDER_ID,
	SHIP_DATE,
	SHIP_MODE,
	SHIPPING,
	POSTAL_CODE,
	CREDIT_CARD_TYPE,
	CREDIT_CARD_NUMBER,
	CUSTOMER_FEEDBACK,
	QUARTER_NUMBER
	) SELECT * FROM temp_t;
END;
/*In the code above
1. The SQL code first checks if a stored procedure named 'vehicles_p' exists. If it does, it is dropped to prepare for the creation of a new procedure.
2. A new stored procedure named 'vehicles_p' is then created. This procedure is designed to perform data insertion into the 'vehicles_t' table.
3. Within the procedure body, the 'INSERT INTO' statement is used to copy data from the 'temp_t' table into the 'vehicles_t' table.
 The columns in both tables must match in order for the data transfer to be successful.
4. The 'vehicles_p' procedure serves the purpose of transferring data from one table to another table, facilitating data management and migration tasks.*/

DROP PROCEDURE IF EXISTS order_p;
DELIMITER $$
CREATE PROCEDURE order_p(quartnum INTEGER)
BEGIN
	INSERT INTO order_t (
	ORDER_ID,
	CUSTOMER_ID,
	SHIPPER_ID,
	PRODUCT_ID,
	QUANTITY,
	VEHICLE_PRICE,
	ORDER_DATE,
	SHIP_DATE,
	DISCOUNT,
	SHIP_MODE,
	SHIPPING,
	CUSTOMER_FEEDBACK,
	QUARTER_NUMBER
	)SELECT DISTINCT
	ORDER_ID,
	CUSTOMER_ID,
	SHIPPER_ID,
	PRODUCT_ID,
	QUANTITY,
	VEHICLE_PRICE,
	ORDER_DATE,
	SHIP_DATE,
	DISCOUNT,
	SHIP_MODE,
	SHIPPING,
	CUSTOMER_FEEDBACK,
	QUARTER_NUMBER
	FROM vehicles_t WHERE QUARTER_NUMBER=quartnum;
	END;
	
	
/*In the code above
1.The SQL code first checks if a stored procedure named 'order_p' exists. If it does, it is dropped to prepare for the creation of a new procedure.
2. A new stored procedure named 'order_p' is then created. This procedure takes one parameter, 'quartnum,' which is an integer representing a quarter number.
3. Within the procedure body, the 'INSERT INTO' statement is used to copy distinct data from the 'vehicles_t' table into the 'order_t' table based on a condition 
involving the 'QUARTER_NUMBER' column. The 'quartnum' parameter is used to filter records for the specified quarter.
4. The 'order_p' procedure is designed to facilitate the transfer of data from one table to another, specifically for orders in a particular quarter."*/

DROP PROCEDURE IF EXISTS customer_p;
DELIMITER $$
CREATE PROCEDURE customer_p()
BEGIN
	INSERT INTO customer_t (
	CUSTOMER_ID,
	CUSTOMER_NAME,
	GENDER,
	JOB_TITLE,
	PHONE_NUMBER,
	EMAIL_ADDRESS,
	CITY,
	COUNTRY,
	STATE,
	CUSTOMER_ADDRESS,
	POSTAL_CODE,
	CREDIT_CARD_TYPE,
	CREDIT_CARD_NUMBER
	)
	SELECT DISTINCT 
	CUSTOMER_ID,
	CUSTOMER_NAME,
	GENDER,
	JOB_TITLE,
	PHONE_NUMBER,
	EMAIL_ADDRESS,
	CITY,
	COUNTRY,
	STATE,
	CUSTOMER_ADDRESS,
	POSTAL_CODE,
	CREDIT_CARD_TYPE,
	CREDIT_CARD_NUMBER
	FROM vehicles_t WHERE CUSTOMER_ID NOT IN (SELECT DISTINCT CUSTOMER_ID FROM customer_t);
END;
/*In the code above
1. The SQL code first checks if a stored procedure named 'customer_p' exists. If it does, it is dropped to prepare for the creation of a new procedure.
2. A new stored procedure named 'customer_p' is then created. This procedure is designed to insert customer data into the 'customer_t' table.
3. Within the procedure body, the 'INSERT INTO' statement is used to copy distinct data from the 'vehicles_t' table into the 'customer_t' table. 
The condition for data transfer ensures that only unique customer records, not already present in the 'customer_t' table, are inserted.
4. The 'customer_p' procedure is intended for populating the 'customer_t' table with new customer records.*/
	
DROP PROCEDURE IF EXISTS product_p;
DELIMITER $$
CREATE PROCEDURE product_p()
BEGIN
	INSERT INTO product_t (
	PRODUCT_ID,
	VEHICLE_MAKER,
	VEHICLE_MODEL,
	VEHICLE_COLOR,
	VEHICLE_MODEL_YEAR,
	VEHICLE_PRICE
    )
	SELECT DISTINCT
	PRODUCT_ID,
	VEHICLE_MAKER,
	VEHICLE_MODEL,
	VEHICLE_COLOR,
	VEHICLE_MODEL_YEAR,
	VEHICLE_PRICE
	FROM vehicles_t WHERE PRODUCT_ID NOT IN (SELECT DISTINCT PRODUCT_ID FROM product_t); 
END;
/*In the code above
1. The SQL code first checks if a stored procedure named 'product_p' exists. If it does, it is dropped to prepare for the creation of a new procedure.
2. A new stored procedure named 'product_p' is then created. This procedure is designed to insert product data into the 'product_t' table.
3. Within the procedure body, the 'INSERT INTO' statement is used to copy distinct data from the 'vehicles_t' table into the 'product_t' table.
 The condition for data transfer ensures that only unique product records, not already present in the 'product_t' table, are inserted.
4. The 'product_p' procedure is intended for populating the 'product_t' table with new product records."*/

DROP PROCEDURE IF EXISTS shipper_p;
DELIMITER $$
CREATE PROCEDURE shipper_p()
BEGIN
	INSERT INTO shipper_t (
	SHIPPER_ID,
	SHIPPER_NAME,
	SHIPPER_CONTACT_DETAILS 
	)
	SELECT DISTINCT
	SHIPPER_ID,
	SHIPPER_NAME,
	SHIPPER_CONTACT_DETAILS
	FROM vehicles_t WHERE SHIPPER_ID NOT IN (SELECT DISTINCT SHIPPER_ID FROM shipper_t); 
END;
/*In the code above
1. The SQL code first checks if a stored procedure named 'shipper_p' exists. If it does, it is dropped to prepare for the creation of a new procedure.
2. A new stored procedure named 'shipper_p' is then created. This procedure is designed to insert shipper data into the 'shipper_t' table.
3. Within the procedure body, the 'INSERT INTO' statement is used to copy distinct data from the 'vehicles_t' table into the 'shipper_t' table.
 The condition for data transfer ensures that only unique shipper records, not already present in the 'shipper_t' table, are inserted.
4. The 'shipper_p' procedure is intended for populating the 'shipper_t' table with new shipper records.*/

/* List of stored procedures to be created.

   Creating the stored procedure for vehicles_p, order_p, customer_p, product_p, shipper_p*/

/*-----------------------------------------------------------------------------------------------------------------------------------

                                               Data Ingestion
                                               
-----------------------------------------------------------------------------------------------------------------------------------*/

-- [5] Ingesting the data:
-- Note: Revisit the video: Week-2: Data Modeling and Architecture: Ingesting data into the main table

TRUNCATE temp_t;
LOAD DATA LOCAL INFILE '/Users/USER/Desktop/Data/new_wheels_sales_qtr_1.csv'-- change this location to load another week
INTO TABLE temp_t
FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

call vehicles_p();
call customer_p();
call product_p();
call shipper_p();
call order_p();

/* Note: 

---> With the help of the above code, you can ingest the data into temp_t table by ingesting the quarterly data and by calling the stored 
     procedures you can ingest the data into separate table.
---> You have to run the above ingestion code 4 times as 4 quarters of data are present and you also need to call all the stored procedures 
     4 times. Please change the argument value while calling the stored procedure order_p(n). (n = 1,2,3,4)
---> If needed revisit the videos: Week 2: Data Modeling and Architecture: Ingesting data into the main table and Ingesting future weeks of data
---> Also revisit the codes used to ingest the data for the gl_eats database. 
     This will help in getting a better understanding of how to ingest the data into various respective tables.*/


/*-----------------------------------------------------------------------------------------------------------------------------------

                                               Views Creation
                                               
-----------------------------------------------------------------------------------------------------------------------------------*/

-- [6] Creating the views:

/*Note: 

---> If needed revisit the videos: Week-2: Data Modeling and Architecture: Creating views for answers to business questions
---> Also revisit the codes used to create views for the gl_eats database. 
	 This will help in getting a better understanding of the creation of views.*/

-- Syntax to create view-

-- To drop the views if already exists- 
DROP VIEW IF EXISTS veh_ord_cust_v;


CREATE VIEW veh_ord_cust_v AS
    DROP VIEW IF EXISTS veh_ord_cust_v;
CREATE VIEW veh_ord_cust_v AS
    SELECT 
	cus.CUSTOMER_ID,
	cus.CUSTOMER_NAME,
	cus.CITY,
	cus.STATE,
	cus.CREDIT_CARD_TYPE,
	ord.ORDER_ID,
	ord.SHIPPER_ID,
	ord.PRODUCT_ID,
	ord.QUANTITY,
	ord.VEHICLE_PRICE,
	ord.ORDER_DATE,
	ord.SHIP_DATE,
	ord.DISCOUNT,
	ord.CUSTOMER_FEEDBACK,
	ord.QUARTER_NUMBER
	FROM order_t ord
        LEFT JOIN customer_t cus ON 
            ord.CUSTOMER_ID = cus.CUSTOMER_ID;
/*In the code above
1. The SQL code first checks if a view named 'veh_ord_cust_v' exists. If it does, it is dropped to prepare for the creation of a new view.
2. A new view named 'veh_ord_cust_v' is then created. This view is designed to consolidate data from the 'order_t' and 'customer_t' tables.
3. The view selects specific columns from both tables, including customer-related columns like 'CUSTOMER_ID,' 'CUSTOMER_NAME,' 'CITY,' 'STATE,' 'CREDIT_CARD_TYPE,' and 
order-related columns such as 'ORDER_ID,' 'SHIPPER_ID,' and more.
4. A LEFT JOIN operation is performed between the 'order_t' table (aliased as 'ord') and the 'customer_t' table (aliased as 'cus'). 
The join condition is based on the 'CUSTOMER_ID' column, allowing for the linkage of orders to customers.
5. The resulting 'veh_ord_cust_v' view provides a consolidated dataset that allows for querying customer details alongside their associated orders.*/

-- To drop the views if already exists- 
DROP VIEW IF EXISTS veh_prod_cust_v;
CREATE VIEW veh_prod_cust_v AS
    SELECT 
	cus.CUSTOMER_ID,
	cus.CUSTOMER_NAME,
	cus.CREDIT_CARD_TYPE,
	cus.STATE,
	ord.ORDER_ID,
	ord.CUSTOMER_FEEDBACK,
	prod.PRODUCT_ID,
	prod.VEHICLE_MAKER,
	prod.VEHICLE_MODEL,
	prod.VEHICLE_COLOR,
	prod.VEHICLE_MODEL_YEAR
	FROM order_t ord
        JOIN customer_t cus ON 
            ord.CUSTOMER_ID = cus.CUSTOMER_ID
		JOIN product_t prod ON 
            ord.PRODUCT_ID = prod.PRODUCT_ID;
/*In the code above
1. The SQL code first checks if a view named 'veh_prod_cust_v' exists. If it does, it is dropped to prepare for the creation of a new view.
2. A new view named 'veh_prod_cust_v' is then created. This view is designed to consolidate data from the 'order_t,' 'customer_t,' and 'product_t' tables.
3. The view selects specific columns from these tables, including customer-related columns like 'CUSTOMER_ID,' 'CUSTOMER_NAME,' 'CREDIT_CARD_TYPE,' and 'STATE,' 
as well as order-related columns such as 'ORDER_ID' and 'CUSTOMER_FEEDBACK,' and product-related columns like 'PRODUCT_ID,' 
'VEHICLE_MAKER,' 'VEHICLE_MODEL,' 'VEHICLE_COLOR,' and 'VEHICLE_MODEL_YEAR.'
4. Two JOIN operations are performed within the view:
    ---A JOIN between the 'order_t' table (aliased as 'ord') and the 'customer_t' table (aliased as 'cus'), linking orders to customers based on the 'CUSTOMER_ID' column.
    ---A JOIN between the 'order_t' table (aliased as 'ord') and the 'product_t' table (aliased as 'prod'), linking orders to products based on the 'PRODUCT_ID' column.
5. The resulting 'veh_prod_cust_v' view provides a consolidated dataset that allows for querying customer details, order details, and product details associated with each order.	*/


-- List of views to be created are "veh_prod_cust_v" , "veh_ord_cust_v"


/*-----------------------------------------------------------------------------------------------------------------------------------

                                               Functions Creation
                                               
-----------------------------------------------------------------------------------------------------------------------------------*/

-- [7] Creating the functions:

/*Note: 

---> If needed revisit the videos: Week-2: Data Modeling and Architecture: Creating User Defined Functions
---> Also revisit the codes used to create functions for the gl_eats database. 
     This will help in getting a better understanding of the creation of functions.*/

-- Create the function calc_revenue_f

-- Syntax to create function-
DELIMITER $$
CREATE FUNCTION calc_revenue_f(vehicle_price DECIMAL(14, 2), quantity INTEGER, discount DECIMAL(4, 2))
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE revenue DECIMAL(10, 2);
    
    SET revenue = (vehicle_price * quantity) * (1 - discount);
    
    RETURN revenue;
END;
-- DROP FUNCTION calc_revenue_f

/*In the code above
1. The SQL code begins by temporarily changing the delimiter to '$$' to facilitate the creation of a stored function.
2. A new stored function named 'calc_revenue_f' is then defined. This function is designed to calculate revenue 
based on three input parameters: 'vehicle_price,' 'quantity,' and 'discount.' 
The function is marked as 'DETERMINISTIC,' indicating that it consistently produces the same output for the same input values.
3. Within the function body, a local variable named 'revenue' of type DECIMAL(10, 2) is declared. The revenue calculation 
is performed by multiplying the 'vehicle_price' by the 'quantity' and subtracting the 'discount' amount.
4. The function concludes by using the 'RETURN' statement to return the calculated 'revenue' value as the function's result."*/


-- Create the function days_to_ship_f-
DELIMITER $$
CREATE FUNCTION days_to_ship_f(order_date DATE, ship_date DATE)
RETURNS INTEGER
DETERMINISTIC
BEGIN
    DECLARE days_difference INTEGER;
    
    SET days_difference = DATEDIFF(day,ship_date, order_date);
    
    RETURN days_difference;
END;
/* The above SQL function takes order_date and ship_date
as input parameters and calculates the difference in 
days using the DATEDIFF function. It returns the
 calculated difference in days as an integer. */
 


/*-----------------------------------------------------------------------------------------------------------------------------------
Note: 
After creating tables, stored procedures, views and functions, attempt the below questions.
Once you have got the answer to the below questions, download the csv file for each question and use it in Python for visualisations.
------------------------------------------------------------------------------------------------------------------------------------ 

  
  
-----------------------------------------------------------------------------------------------------------------------------------

                                                         Queries
                                               
-----------------------------------------------------------------------------------------------------------------------------------*/
  
/*-- QUESTIONS RELATED TO CUSTOMERS
     [Q1] What is the distribution of customers across states?
     Hint: For each state, count the number of customers.*/


SELECT state, COUNT(DISTINCT customer_id) AS number_of_customers
FROM veh_ord_cust_v
GROUP BY state
ORDER BY number_of_customers DESC;

/*In the query, the 'state' column was selected, and for each state, the count of distinct 'customer_id' values was calculated. 
The results were grouped by the 'state' column using the GROUP BY clause. Additionally, the number of customers in each state was determined using the COUNT function. 
To present the results in a meaningful way, they were ordered in descending order by the number of customers,
 ensuring that states with the largest customer bases were listed at the top of the result set.*/
-- ---------------------------------------------------------------------------------------------------------------------------------

/* [Q2] What is the average rating in each quarter?
-- Very Bad is 1, Bad is 2, Okay is 3, Good is 4, Very Good is 5.

Hint: Use a common table expression and in that CTE, assign numbers to the different customer ratings. 
      Now average the feedback for each quarter. 

Note: For reference, refer to question number 10. Week-2: Hands-on (Practice)-GL_EATS_PRACTICE_EXERCISE_SOLUTION.SQL. 
      You'll get an overview of how to use common table expressions from this question.*/


WITH RatingTable AS (
    SELECT
        quarter_number,
        CASE
            WHEN customer_feedback = 'Very Bad' THEN 1
            WHEN customer_feedback = 'Bad' THEN 2
            WHEN customer_feedback = 'Okay' THEN 3
            WHEN customer_feedback = 'Good' THEN 4
            WHEN customer_feedback = 'Very Good' THEN 5
            ELSE NULL -- Handle other cases if needed
        END AS grouped_rating
    FROM veh_ord_cust_v
)

SELECT
    quarter_number,
    AVG(grouped_rating) AS average_rating
FROM RatingTable
WHERE grouped_rating IS NOT NULL -- Filter out NULL values
GROUP BY quarter_number
ORDER BY quarter_number;

/*In the above code
1.  A temporary table named "RatingTable" was created using a Common Table Expression (CTE).
2. Within the CTE, the original table "veh_ord_cust_v" was queried, and a new column called "grouped_rating" was generated based on the
 values in the "customer_feedback" column. Ratings such as "Very Bad," "Bad," "Okay," "Good," and "Very Good" were assigned numeric values from 1 to 5, respectively. 
 Any other values were assigned as NULL.
3. In the main query, the data from the "RatingTable" CTE was retrieved.
4. The query calculated the average of the "grouped_rating" for each unique "quarter_number."
5. The results were filtered to exclude rows where "grouped_rating" was NULL.
6. The results were then grouped by "quarter_number."
7. Finally, the results were ordered by "quarter_number."*/
-- ---------------------------------------------------------------------------------------------------------------------------------

/* [Q3] Are customers getting more dissatisfied over time?

Hint: Need the percentage of different types of customer feedback in each quarter. Use a common table expression and
	  determine the number of customer feedback in each category as well as the total number of customer feedback in each quarter.
	  Now use that common table expression to find out the percentage of different types of customer feedback in each quarter.
      Eg: (total number of very good feedback/total customer feedback)* 100 gives you the percentage of very good feedback.
      
Note: For reference, refer to question number 10. Week-2: Hands-on (Practice)-GL_EATS_PRACTICE_EXERCISE_SOLUTION.SQL. 
      You'll get an overview of how to use common table expressions from this question*/
      
WITH FeedbackCounts AS (
    SELECT
        quarter_number,
        customer_feedback,
        COUNT(*) AS feedback_count
    FROM veh_ord_cust_v
    WHERE quarter_number BETWEEN 1 AND 4 -- Filter for quarters 1 to 4
    GROUP BY quarter_number, customer_feedback
),
TotalCounts AS (
    SELECT
        quarter_number,
        SUM(feedback_count) AS total_feedback_count
    FROM FeedbackCounts
    GROUP BY quarter_number
)
SELECT
    fc.quarter_number,
    fc.customer_feedback,
    fc.feedback_count,
    tc.total_feedback_count,
    (fc.feedback_count * 100.0 / tc.total_feedback_count) AS percentage
FROM FeedbackCounts fc
JOIN TotalCounts tc ON fc.quarter_number = tc.quarter_number
ORDER BY fc.quarter_number, fc.customer_feedback;

/* In the above code
1. The SQL code begins by creating two Common Table Expressions (CTEs) named 'FeedbackCounts' and 'TotalCounts
2. In the 'FeedbackCounts' CTE, data is extracted from the 'veh_ord_cust_v' table, focusing on records corresponding to quarters 1 to 4. 
These records are grouped by 'quarter_number' and 'customer_feedback,' and 
the count of feedback entries in each category is calculated and labeled as 'feedback_count.'
3. In the 'TotalCounts' CTE, the data from the 'FeedbackCounts' CTE is used. 
Feedback counts are grouped by 'quarter_number,' and the sum of feedback counts for 
each quarter is computed and stored as 'total_feedback_count.'
4. The final query retrieves data from the 'FeedbackCounts' CTE (aliased as 'fc') and the 'TotalCounts' CTE (aliased as 'tc'). 
It includes columns such as 'quarter_number,' 'customer_feedback,' 'feedback_count,' and 'total_feedback_count.' 
Additionally, it calculates the percentage of feedback for each 'customer_feedback' category in relation to the total feedback count, presenting it as a percentage. 
The resulting dataset is then sorted in ascending order by 'quarter_number' and 'customer_feedback.*/


-- ---------------------------------------------------------------------------------------------------------------------------------

/*[Q4] Which are the top 5 vehicle makers preferred by the customer.

Hint: For each vehicle make what is the count of the customers.*/

SELECT
    vehicle_maker AS preferred_vehicle_maker,
    COUNT(DISTINCT customer_id) AS customer_count
FROM veh_prod_cust_v
GROUP BY vehicle_maker
ORDER BY customer_count DESC
LIMIT 5;


/* In the code above
The SQL code selects data from the 'veh_prod_cust_v' table and groups it by the 'vehicle_maker' column, 
which represents different vehicle manufacturers. It then calculates the count of 
distinct customer IDs for each manufacturer using the COUNT(DISTINCT customer_id) function.
 The resulting dataset is presented with two columns: 'preferred_vehicle_maker,' '
 indicating the name of the vehicle maker, and 'customer_count,' 
 which represents the count of unique customers associated with each manufacturer.
 To identify the top 5 preferred vehicle makers with the highest customer counts, 
 the results are sorted in descending order based on 'customer_count' and limited to the top 5 records*/
-- ---------------------------------------------------------------------------------------------------------------------------------

/*[Q5] What is the most preferred vehicle make in each state?

Hint: Use the window function RANK() to rank based on the count of customers for each state and vehicle maker. 
After ranking, take the vehicle maker whose rank is 1.*/



WITH RankedMakers AS (
    SELECT
        state,
        vehicle_maker,
        RANK() OVER (PARTITION BY state ORDER BY COUNT(DISTINCT customer_id) DESC) AS highest_rank
    FROM veh_prod_cust_v
    GROUP BY state, vehicle_maker
)
SELECT
    state,
    vehicle_maker AS most_preferred_vehicle_maker
FROM RankedMakers
WHERE highest_rank = 1;

/*In the code above
1. The SQL code starts by creating a Common Table Expression (CTE) called 'RankedMakers' for intermediate calculations.
2. Data is selected from the 'veh_prod_cust_v' table, and this data is grouped by both the 'state' and 'vehicle_maker' columns.
 Within each state, the RANK() function is used to determine the ranking of each
 'vehicle_maker' based on the number of distinct customer IDs ('customer_id') associated with it. 
These rankings reflect the preference for each vehicle maker within its respective state.
3. The 'RankedMakers' CTE includes columns for 'state,' 'vehicle_maker,' and 'highest_rank,' with 'highest_rank' 
indicating the rank of each vehicle maker within its state.
4. The final query retrieves data from the 'RankedMakers' CTE, selecting the 'state' and 'vehicle_maker' columns.
 To identify the most preferred vehicle maker in each state, a filter is applied to include only those rows where 'highest_rank' is equal to 1, 
signifying that the vehicle maker with the highest preference in each state is included in the results.*/
-- ---------------------------------------------------------------------------------------------------------------------------------

/*QUESTIONS RELATED TO REVENUE and ORDERS 

-- [Q6] What is the trend of number of orders by quarters?

	*/
SELECT quarter_number, COUNT(order_id) AS number_of_orders
FROM veh_ord_cust_v
GROUP BY quarter_number
ORDER BY quarter_number;

/* In the code above
1. The SQL code starts by selecting data from the 'veh_ord_cust_v' table. 
The data is then grouped based on the 'quarter_number' column, effectively grouping rows that correspond to the same quarter.
2. Within each group (quarter), the code calculates the number of orders using the COUNT(order_id) function. 
This provides the count of orders for each unique 'quarter_number.'
3. The resulting dataset includes two columns: 'quarter_number,' which represents the specific quarter under consideration, 
and 'number_of_orders,' which denotes the count of orders for each quarter.
4. To present the data in chronological order, the results are sorted in ascending order based on the 'quarter_number' column."
*/



-- ---------------------------------------------------------------------------------------------------------------------------------

/* [Q7] What is the quarter over quarter % change in revenue? 

Hint: Quarter over Quarter percentage change in revenue means what is the change in revenue from the subsequent quarter to the previous quarter in percentage.
      To calculate you need to use the common table expression to find out the sum of revenue for each quarter.
      Then use that CTE along with the LAG function to calculate the QoQ percentage change in revenue.
      
Note: For reference, refer to question number 5. Week-2: Hands-on (Practice)-GL_EATS_PRACTICE_EXERCISE_SOLUTION.SQL. 
      You'll get an overview of how to use common table expressions and the LAG function from this question.*/
      
      
      
      WITH RevenueCTE AS (
  SELECT
    quarter_number,
    SUM(calc_revenue_f(vehicle_price, quantity, discount)) AS total_revenue
  FROM
    veh_ord_cust_v
  WHERE
    quarter_number BETWEEN 1 AND 4
  GROUP BY
    quarter_number
)

SELECT
  quarter_number,
  total_revenue,
  LAG(total_revenue) OVER (ORDER BY quarter_number) AS prev_quarter_revenue,
  ROUND(
    ((total_revenue - LAG(total_revenue) OVER (ORDER BY quarter_number)) / 
    LAG(total_revenue) OVER (ORDER BY quarter_number)) * 100,
    2
  ) AS qoq_percentage_change
FROM
  RevenueCTE
ORDER BY
  quarter_number;

      
/*In the code above
1. The SQL code begins by creating a Common Table Expression (CTE) named 'RevenueCTE' for intermediate calculations
2. Within 'RevenueCTE,' data is selected from the 'veh_ord_cust_v' table and filtered to include only records corresponding to quarters 1 through 4. 
The data is then grouped by 'quarter_number,' 
and for each quarter, the code calculates the total revenue using a custom function called 'calc_revenue_f.'
3. The main query retrieves data from 'RevenueCTE' and includes columns for 'quarter_number,' 'total_revenue,' 'prev_quarter_revenue,' and 'qoq_percentage_change.'
4. The 'prev_quarter_revenue' is computed using the LAG() function to find the revenue from the previous quarter.
5. The 'qoq_percentage_change' represents the quarter-over-quarter percentage change in revenue. 
This is calculated by taking the difference between the current quarter's total revenue and the previous quarter's total revenue, 
dividing it by the previous quarter's revenue, multiplying the result by 100, and rounding it to two decimal places.
6.Finally, the results are ordered by 'quarter_number' to present the data in chronological order.*/
-- ---------------------------------------------------------------------------------------------------------------------------------

/* [Q8] What is the trend of revenue and orders by quarters?

Hint: Find out the sum of revenue and count the number of orders for each quarter.*/

SELECT
    quarter_number,
    SUM(calc_revenue_f(vehicle_price, quantity, discount)) AS total_revenue,
    COUNT(order_id) AS total_orders
FROM
    veh_ord_cust_v
WHERE
    quarter_number BETWEEN 1 AND 4
GROUP BY
    quarter_number
ORDER BY
    quarter_number;

/*In the code above 
1. The SQL code begins by selecting data from the 'veh_ord_cust_v' table, focusing on records related to quarters 1 through 4.
2. The selected data is then grouped by the 'quarter_number' column, effectively grouping rows that correspond to the same quarter. 
    Within each quarter group, two aggregation functions are applied:
	-- The first function calculates the total revenue for each quarter using a custom function named 'calc_revenue_f.' 
	   This function takes into account factors such as vehicle price, quantity, and discount.
	-- The second function counts the total number of orders placed in each quarter based on the 'order_id' column.
3. The resulting dataset includes three columns: 'quarter_number,' which specifies the quarter under consideration, 'total_revenue,' 
   representing the total revenue generated in each quarter, and 'total_orders,' indicating the total number of orders placed in each quarter.
4. To present the data in chronological order, the results are sorted by 'quarter_number'.*/




-- ---------------------------------------------------------------------------------------------------------------------------------

/* QUESTIONS RELATED TO SHIPPING 
    [Q9] What is the average discount offered for different types of credit cards?

Hint: Find out the average of discount for each credit card type.*/
SELECT
    credit_card_type,
    AVG(discount) AS average_discount
FROM
    veh_ord_cust_v
GROUP BY
    credit_card_type;


/*In the above code
1. The SQL code begins by selecting data from the 'veh_ord_cust_v' table
2. The selected data is then grouped by the 'credit_card_type' column, effectively grouping rows that correspond to the same credit card type. 
Within each group, the code calculates the average discount offered using the AVG(discount) function. 
This function computes the average value of the 'discount' column for each credit card type.
3. The resulting dataset includes two columns: 'credit_card_type,' which specifies the type of credit card under consideration, and 'average_discount,' 
representing the average discount offered for each credit card type
4. The purpose of the code is to provide insights into the average discounts associated with different credit card types.*/
-- ---------------------------------------------------------------------------------------------------------------------------------

/* [Q10] What is the average time taken to ship the placed orders for each quarters?
   Use days_to_ship_f function to compute the time taken to ship the orders.

Hint: For each quarter, find out the average of the function that you created to calculate the difference between the ship date and the order date.*/

SELECT
    quarter_number,
    AVG(days_to_ship_f(order_date, ship_date)) AS avg_days_to_ship
FROM
    veh_ord_cust_v
WHERE
    quarter_number BETWEEN 1 AND 4
GROUP BY
    quarter_number
ORDER BY
    quarter_number;
/*In the code above
1. The SQL code starts by selecting data from the 'veh_ord_cust_v' table, focusing on records related to quarters 1 through 4.
2. Next, the selected data is grouped by the 'quarter_number' column, effectively grouping rows that correspond to the same quarter. 
Within each quarter group, the code calculates the average number of days it took to ship orders using the AVG(days_to_ship_f(order_date, ship_date)) function. 
This function makes use of a custom function called 'days_to_ship_f,' which calculates the duration between the order date and ship date.
3. The resulting dataset includes two columns: 'quarter_number,' which specifies the quarter under consideration, and 'avg_days_to_ship,' 
representing the average number of days it took to ship orders for each quarter.
4. To present the data in chronological order, the results are sorted by 'quarter_number'.*/


-- --------------------------------------------------------Done----------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------------------------------------------------



