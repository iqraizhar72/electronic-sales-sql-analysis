#----------------------------------------------------------------------------------SQL Project--------------------------------------------------------------------------------------

# creating Database

create database electronics_sales;
use electronics_sales;

# creating tables

create table sales_2023(
sale_ID int auto_increment primary key,
product_id int not null,
product_name varchar(50) not null,
category varchar(50) not null,
brand varchar(50) not null,
customer_ID int not null,
customer_name varchar(50) not null,
sale_date date not null,
sale_amount int not null,
sale_quantity int default 1 not null,
discount int not null,
payment_method varchar(50) not null,
region varchar(50) not null,
store varchar(50) not null,
profit int not null
);

select * from sales_2023;
desc sales_2023;

create table sales_2024(
sale_ID int auto_increment primary key,
product_id int not null,
product_name varchar(50) not null,
category varchar(50) not null,
brand varchar(50) not null,
customer_ID int not null,
customer_name varchar(50) not null,
sale_date date not null,
sale_amount int not null,
sale_quantity int default 1 not null,
discount int not null,
payment_method varchar(50) not null,
region varchar(50) not null,
store varchar(50) not null,
profit int not null
);

select * from sales_2024;
desc sales_2024;

# inserting data into tables

INSERT INTO sales_2023 (
    product_id, product_name, category, brand, customer_ID, customer_name, sale_date, 
    sale_amount, sale_quantity, discount, payment_method, region, store, profit
) 
VALUES 
(101, 'Laptop X1', 'Laptop', 'Brand A', 201, 'Alice', '2023-01-05', 1200, 1, 10, 'Credit Card', 'North', 'Store A', 200),
(102, 'Smartphone Y2', 'Mobile', 'Brand B', 202, 'Bob', '2023-01-10', 800, 2, 5, 'Cash', 'East', 'Store B', 150),
(103, 'Tablet Z3', 'Tablet', 'Brand C', 203, 'Charlie', '2023-02-15', 600, 1, 8, 'Online Payment', 'South', 'Store C', 100),
(104, 'Smartwatch W1', 'Accessories', 'Brand D', 204, 'Daisy', '2023-02-18', 250, 3, 12, 'Credit Card', 'West', 'Store D', 50),
(105, 'Gaming Console P5', 'Gaming', 'Brand E', 205, 'Eve', '2023-03-01', 500, 1, 15, 'Cash', 'North', 'Store A', 75),
(106, 'Headphones H3', 'Accessories', 'Brand F', 206, 'Frank', '2023-03-10', 150, 2, 10, 'Credit Card', 'East', 'Store B', 30),
(107, 'Laptop X2', 'Laptop', 'Brand A', 207, 'Grace', '2023-03-20', 1400, 1, 7, 'Online Payment', 'South', 'Store C', 250),
(108, 'Smartphone Y1', 'Mobile', 'Brand B', 208, 'Henry', '2023-04-05', 700, 1, 10, 'Cash', 'West', 'Store D', 120),
(109, 'Tablet Z1', 'Tablet', 'Brand C', 209, 'Ivy', '2023-04-10', 650, 1, 5, 'Credit Card', 'North', 'Store A', 90),
(110, 'Smartwatch W2', 'Accessories', 'Brand D', 210, 'Jack', '2023-04-18', 300, 1, 10, 'Online Payment', 'East', 'Store B', 60),
(111, 'Gaming Console P4', 'Gaming', 'Brand E', 211, 'Kate', '2023-05-01', 450, 1, 12, 'Cash', 'South', 'Store C', 70),
(112, 'Headphones H2', 'Accessories', 'Brand F', 212, 'Leo', '2023-05-12', 100, 1, 5, 'Credit Card', 'West', 'Store D', 20),
(113, 'Laptop X3', 'Laptop', 'Brand A', 213, 'Mia', '2023-05-25', 1300, 2, 8, 'Online Payment', 'North', 'Store A', 220),
(114, 'Smartphone Y3', 'Mobile', 'Brand B', 214, 'Noah', '2023-06-10', 900, 1, 10, 'Cash', 'East', 'Store B', 170),
(115, 'Tablet Z2', 'Tablet', 'Brand C', 215, 'Olivia', '2023-06-18', 750, 1, 5, 'Credit Card', 'South', 'Store C', 120),
(116, 'Smartwatch W3', 'Accessories', 'Brand D', 216, 'Paul', '2023-06-28', 200, 1, 12, 'Online Payment', 'West', 'Store D', 40),
(117, 'Gaming Console P6', 'Gaming', 'Brand E', 217, 'Quincy', '2023-07-05', 550, 1, 15, 'Cash', 'North', 'Store A', 80),
(118, 'Headphones H1', 'Accessories', 'Brand F', 218, 'Ruby', '2023-07-15', 120, 1, 7, 'Credit Card', 'East', 'Store B', 25),
(119, 'Laptop X4', 'Laptop', 'Brand A', 219, 'Sophia', '2023-07-22', 1250, 1, 6, 'Online Payment', 'South', 'Store C', 210),
(120, 'Smartphone Y4', 'Mobile', 'Brand B', 220, 'Thomas', '2023-08-01', 850, 1, 10, 'Cash', 'West', 'Store D', 150),
(121, 'Tablet Z4', 'Tablet', 'Brand C', 221, 'Uma', '2023-08-10', 700, 2, 5, 'Credit Card', 'North', 'Store A', 110),
(122, 'Smartwatch W4', 'Accessories', 'Brand D', 222, 'Victor', '2023-08-20', 350, 1, 10, 'Online Payment', 'East', 'Store B', 70),
(123, 'Gaming Console P3', 'Gaming', 'Brand E', 223, 'Will', '2023-09-01', 480, 1, 15, 'Cash', 'South', 'Store C', 65),
(124, 'Headphones H4', 'Accessories', 'Brand F', 224, 'Xena', '2023-09-12', 160, 1, 10, 'Credit Card', 'West', 'Store D', 35),
(125, 'Laptop X5', 'Laptop', 'Brand A', 225, 'Yara', '2023-09-20', 1500, 1, 10, 'Online Payment', 'North', 'Store A', 300),
(126, 'Smartphone Y5', 'Mobile', 'Brand B', 226, 'Zack', '2023-10-05', 950, 2, 12, 'Cash', 'East', 'Store B', 180),
(127, 'Tablet Z5', 'Tablet', 'Brand C', 227, 'Aaron', '2023-10-15', 800, 1, 10, 'Credit Card', 'South', 'Store C', 130),
(128, 'Smartwatch W5', 'Accessories', 'Brand D', 228, 'Bella', '2023-10-25', 400, 1, 10, 'Online Payment', 'West', 'Store D', 80),
(129, 'Gaming Console P2', 'Gaming', 'Brand E', 229, 'Cody', '2023-11-01', 520, 1, 12, 'Cash', 'North', 'Store A', 85),
(130, 'Headphones H5', 'Accessories', 'Brand F', 230, 'Dana', '2023-11-15', 180, 1, 10, 'Credit Card', 'East', 'Store B', 40);

INSERT INTO sales_2024 (
    product_id, product_name, category, brand, customer_ID, customer_name, sale_date, 
    sale_amount, sale_quantity, discount, payment_method, region, store, profit
) 
VALUES
(201, 'Smartphone Z1', 'Mobile', 'Brand A', 202, 'Bob', '2024-01-05', 950, 2, 10, 'Online Payment', 'North', 'Store A', 200),
(202, 'Tablet Pro 7', 'Tablet', 'Brand C', 203, 'Charlie', '2024-01-12', 850, 1, 15, 'Cash', 'East', 'Store B', 150),
(203, 'Smartwatch Series 5', 'Accessories', 'Brand D', 204, 'Daisy', '2024-01-18', 300, 1, 10, 'Credit Card', 'South', 'Store C', 50),
(204, 'Laptop Z2', 'Laptop', 'Brand E', 205, 'Eve', '2024-02-01', 1700, 1, 5, 'Cash', 'West', 'Store D', 300),
(205, 'Gaming Console Max', 'Gaming', 'Brand F', 206, 'Frank', '2024-02-15', 620, 1, 12, 'Online Payment', 'North', 'Store A', 100),
(206, 'Tablet Ultra', 'Tablet', 'Brand A', 210, 'Jack', '2024-02-28', 800, 1, 8, 'Credit Card', 'East', 'Store B', 120),
(207, 'Headphones Pro', 'Accessories', 'Brand B', 211, 'Kate', '2024-03-10', 200, 2, 5, 'Cash', 'South', 'Store C', 40),
(208, 'Smartphone Elite', 'Mobile', 'Brand C', 213, 'Mia', '2024-03-20', 1100, 1, 7, 'Online Payment', 'West', 'Store D', 180),
(209, 'Smartwatch Fit', 'Accessories', 'Brand D', 202, 'Bob', '2024-04-02', 250, 1, 12, 'Credit Card', 'North', 'Store A', 60),
(210, 'Laptop Z3', 'Laptop', 'Brand A', 214, 'Noah', '2024-04-15', 1600, 1, 6, 'Cash', 'East', 'Store B', 280),
(211, 'Gaming Console P7', 'Gaming', 'Brand E', 203, 'Charlie', '2024-04-25', 720, 1, 10, 'Online Payment', 'South', 'Store C', 90),
(212, 'Smartphone XL', 'Mobile', 'Brand F', 215, 'Olivia', '2024-05-05', 950, 1, 12, 'Credit Card', 'West', 'Store D', 200),
(213, 'Tablet Mini', 'Tablet', 'Brand A', 217, 'Quincy', '2024-05-18', 700, 2, 8, 'Cash', 'North', 'Store A', 100),
(214, 'Headphones Bass+', 'Accessories', 'Brand B', 218, 'Ruby', '2024-06-01', 180, 1, 10, 'Online Payment', 'East', 'Store B', 35),
(215, 'Smartwatch 2.0', 'Accessories', 'Brand C', 219, 'Sophia', '2024-06-12', 300, 1, 5, 'Credit Card', 'South', 'Store C', 50),
(216, 'Gaming Console P8', 'Gaming', 'Brand D', 220, 'Thomas', '2024-06-22', 620, 1, 12, 'Cash', 'West', 'Store D', 70),
(217, 'Smartphone Z2', 'Mobile', 'Brand E', 221, 'Uma', '2024-07-05', 1000, 1, 10, 'Online Payment', 'North', 'Store A', 210),
(218, 'Tablet Plus', 'Tablet', 'Brand F', 222, 'Victor', '2024-07-15', 850, 1, 7, 'Credit Card', 'East', 'Store B', 170),
(219, 'Laptop Pro', 'Laptop', 'Brand A', 223, 'Will', '2024-07-28', 2000, 1, 6, 'Cash', 'South', 'Store C', 400),
(220, 'Smartwatch Prime', 'Accessories', 'Brand B', 224, 'Xena', '2024-08-02', 400, 1, 12, 'Online Payment', 'West', 'Store D', 80),
(221, 'Gaming Console P9', 'Gaming', 'Brand C', 225, 'Yara', '2024-08-18', 680, 1, 10, 'Credit Card', 'North', 'Store A', 90),
(222, 'Tablet Supreme', 'Tablet', 'Brand D', 226, 'Zack', '2024-09-01', 950, 1, 8, 'Cash', 'East', 'Store B', 150),
(223, 'Laptop Air', 'Laptop', 'Brand E', 227, 'Aaron', '2024-09-15', 1700, 1, 10, 'Online Payment', 'South', 'Store C', 280),
(224, 'Smartwatch Lite', 'Accessories', 'Brand F', 228, 'Bella', '2024-09-25', 350, 1, 5, 'Credit Card', 'West', 'Store D', 60),
(225, 'Smartphone Z3', 'Mobile', 'Brand A', 229, 'Cody', '2024-10-01', 850, 2, 10, 'Cash', 'North', 'Store A', 160),
(226, 'Gaming Console Ultimate', 'Gaming', 'Brand B', 230, 'Dana', '2024-10-10', 750, 1, 12, 'Online Payment', 'East', 'Store B', 120),
(227, 'Tablet UltraMax', 'Tablet', 'Brand C', 213, 'Mia', '2024-10-20', 1200, 1, 8, 'Credit Card', 'South', 'Store C', 220),
(228, 'Smartwatch 3.0', 'Accessories', 'Brand D', 219, 'Sophia', '2024-11-01', 450, 1, 6, 'Cash', 'West', 'Store D', 90),
(229, 'Laptop Pro Max', 'Laptop', 'Brand E', 202, 'Bob', '2024-11-15', 1800, 1, 5, 'Online Payment', 'North', 'Store A', 300),
(230, 'Gaming Console Z', 'Gaming', 'Brand F', 204, 'Daisy', '2024-11-25', 700, 1, 10, 'Credit Card', 'East', 'Store B', 110),
(231, 'Smartphone Prime', 'Mobile', 'Brand A', 208, 'Henry', '2024-12-01', 1150, 1, 12, 'Cash', 'South', 'Store C', 250),
(232, 'Tablet Slim', 'Tablet', 'Brand B', 205, 'Eve', '2024-12-10', 900, 1, 10, 'Online Payment', 'West', 'Store D', 140),
(233, 'Laptop Supreme', 'Laptop', 'Brand C', 203, 'Charlie', '2024-12-15', 2000, 1, 15, 'Credit Card', 'North', 'Store A', 350);


# Data Exploration and Cleaning

# record count
select count(*) from sales_2023;
select count(*) from sales_2024;

# customer count
select count(distinct customer_ID) from sales_2023;
select count(distinct customer_ID) from sales_2024;

#category count
select count(distinct category) from sales_2023;
select distinct category from sales_2023;

select count(distinct category) from sales_2024;
select distinct category from sales_2024;

# Null Value Check
select * from  sales_2024
where 
     product_id is null or product_name is null or  category  is null or brand is null or customer_ID is null or customer_name is null or sale_date is null 
     or sale_amount is null or sale_quantity is null or discount is null or payment_method is null or region is null or store is null or profit is null ;

select * from  sales_2023
where 
     product_id is null or product_name is null or  category  is null or brand is null or customer_ID is null or customer_name is null or sale_date is null 
     or sale_amount is null or sale_quantity is null or discount is null or payment_method is null or region is null or store is null or profit is null ;

# delete null values

delete from sales_2023
where 
     product_id is null or product_name is null or  category  is null or brand is null or customer_ID is null or customer_name is null or sale_date is null 
     or sale_amount is null or sale_quantity is null or discount is null or payment_method is null or region is null or store is null or profit is null ;

delete from sales_2024
where 
     product_id is null or product_name is null or  category  is null or brand is null or customer_ID is null or customer_name is null or sale_date is null 
     or sale_amount is null or sale_quantity is null or discount is null or payment_method is null or region is null or store is null or profit is null ;
    
#1. Retrieve all sales records from 2023 and 2024 combined.
select * from sales_2023
union
select * from sales_2024;
    
# 2. Find the total profit for each table.
select sum(profit) from sales_2023;
select sum(profit) from sales_2024;

# 3. Find the total sales amount for each table.
select sum(sale_amount) from sales_2023;
select sum(sale_amount) from sales_2024;

#4. Calculate the total sales quantity for each product brand.
select brand,sum(sale_quantity) from sales_2023 group by brand;
select brand,sum(sale_quantity) from sales_2024 group by brand;

#5. List all unique product categories in the dataset.
select distinct category from sales_2023;
select distinct category from sales_2024;

#6. Identify the payment methods used and the count of transactions for each.
select distinct payment_method from sales_2023;
select payment_method,count(*) from sales_2023 group by payment_method; 

select distinct payment_method from sales_2024;
select payment_method,count(*) from sales_2024 group by payment_method; 


#7.Find the average sales amount and total sales quantity for each region.

select region,sum(sale_quantity) as Total_Sales ,avg(sale_amount) as Average_Sales from sales_2023 group by region;
select region,sum(sale_quantity) as Total_Sales ,avg(sale_amount) as Average_Sales from sales_2024 group by region;

#8. Calculate the maximum discount offered in both years.
select max(discount) from sales_2023
union
select max(discount) from sales_2024;

#9. Determine the product with the highest sales quantity in 2023.
select product_name,sum(sale_quantity) from sales_2023 group by product_name order by sum(sale_quantity) desc limit 1;
select product_name,sum(sale_quantity) from sales_2024 group by product_name order by sum(sale_quantity) desc limit 1;

#10. Compare the total sales amount between 2023 and 2024 for each category.
select category,sum(sale_amount) from sales_2023 group by category;
select category,sum(sale_amount) from sales_2024 group by category;

#11. List the top 3 stores with the highest total sales in 2024.
SELECT store, SUM(sale_amount) FROM sales_2023 GROUP BY store ORDER BY SUM(sale_amount) DESC LIMIT 3;
SELECT store, SUM(sale_amount) FROM sales_2024 GROUP BY store ORDER BY SUM(sale_amount) DESC LIMIT 3;

# 12. Retrieve sales records where the discount is greater than 10%.
select * from sales_2023 where discount> 10;
select count(*) from sales_2023 where discount> 10;

#13. Find regions where the average sales amount exceeds $5,000.
select avg(sale_amount),region from sales_2023 group by region having avg(sale_amount)>500;
select avg(sale_amount),region from sales_2024 group by region having avg(sale_amount)>500;

#14. Get a list of categories with total sales greater than $10,000, grouped by year.
select sum(sale_amount),category from sales_2023 group by category having sum(sale_amount)>1000;
select sum(sale_amount),category from sales_2024 group by category having sum(sale_amount)>1000;

#15. Identify products sold in more than three regions.
select product_name,count(distinct region) from sales_2023 group by product_name having count(distinct region)>=3;
select product_name,count(distinct region) from sales_2024 group by product_name having count(distinct region)>=3;

#16. Retrieve customers with total sales of over $1,000, using HAVING.
select customer_name,sum(sale_amount) from sales_2023 group by customer_name having sum(sale_amount)>1000;
select customer_name,sum(sale_amount) from sales_2024 group by customer_name having sum(sale_amount)>1000;

#17. List sales records from 2024 that occurred in the first quarter (Jan–Mar).
select * from sales_2023 where month(sale_date) between 1 and 3;
select * from sales_2024 where month(sale_date) between 1 and 3;

#18. Find the monthly sales trends for both years:

SELECT YEAR(Sale_Date) AS Year, MONTH(Sale_Date) AS Month, SUM(Sale_Amount) AS TotalSales
FROM (
    SELECT * FROM Sales_2023
    UNION ALL
    SELECT * FROM Sales_2024
) CombinedSales
GROUP BY YEAR(Sale_Date), MONTH(Sale_Date)
ORDER BY Year, Month;

#19. Calculate the total sales for each year grouped by quarters:

SELECT YEAR(Sale_Date) AS Year, 
       CEIL(MONTH(Sale_Date)/3.0) AS Quarter, 
       SUM(Sale_amount) AS TotalSales
FROM (
    SELECT * FROM Sales_2023
    UNION ALL
    SELECT * FROM Sales_2024
) CombinedSales
GROUP BY YEAR(Sale_Date), CEIL(MONTH(Sale_Date)/3.0)
ORDER BY Year, Quarter;


#20. Identify the days with the highest sales amount in each year:

SELECT YEAR(Sale_Date) AS Year, Sale_Date, SUM(Sale_Amount) AS TotalSales 
FROM (SELECT * FROM Sales_2023 
UNION ALL
SELECT * FROM Sales_2024) 
CombinedSales GROUP BY YEAR(Sale_Date), Sale_Date 
ORDER BY TotalSales DESC;

#21. Compare the total sales for the same month in 2023 and 2024:

SELECT MONTH(Sale_Date) AS Month, 
       SUM(CASE WHEN YEAR(Sale_Date) = 2023 THEN Sale_amount ELSE 0 END) AS Sales_2023,
       SUM(CASE WHEN YEAR(Sale_Date) = 2024 THEN Sale_amount ELSE 0 END) AS Sales_2024
FROM (
    SELECT * FROM Sales_2023
    UNION ALL
    SELECT * FROM Sales_2024
) CombinedSales
GROUP BY MONTH(Sale_Date)
ORDER BY Month;

#22. Combine data from both tables and list the total sales for each product:

SELECT product_name, SUM(Sale_amount) AS TotalSales
FROM (
    SELECT product_name, Sale_amount FROM Sales_2023
    UNION ALL
    SELECT product_name, Sale_amount FROM Sales_2024
) CombinedSales
GROUP BY product_name
ORDER BY TotalSales DESC;


#23. Find customers who made purchases in both years:

SELECT DISTINCT a.Customer_ID, a.Customer_Name
FROM Sales_2023 a
INNER JOIN Sales_2024 b
ON a.Customer_ID = b.Customer_ID;


#24. Identify products that were sold in 2023 but not in 2024:

SELECT Product_Name
FROM Sales_2023
WHERE Product_ID NOT IN (SELECT Product_ID FROM Sales_2024);


#25. Retrieve the details of stores that had sales in both years:

SELECT DISTINCT a.Store
FROM Sales_2023 a
INNER JOIN Sales_2024 b
ON a.Store = b.Store;


#26. Create a union of both tables and list the distinct products sold:

SELECT DISTINCT Product_Name
FROM (
    SELECT Product_Name FROM Sales_2023
    UNION ALL
    SELECT Product_Name FROM Sales_2024
) CombinedSales;

#27. Use DISTINCT to find unique customer names across both years:

SELECT DISTINCT Customer_Name
FROM (
    SELECT Customer_Name FROM Sales_2023
    UNION ALL
    SELECT Customer_Name FROM Sales_2024
) CombinedSales;


#28. Use CASE to classify sales as "High", "Medium", or "Low" based on the sales amount:

SELECT Product_Name, Sale_Amount, 
       CASE 
           WHEN Sale_Amount > 1000 THEN 'High'
           WHEN Sale_Amount BETWEEN 500 AND 1000 THEN 'Medium'
           ELSE 'Low'
       END AS Sales_Category
FROM (
    SELECT Product_Name, Sale_Amount FROM Sales_2023
    UNION ALL
    SELECT Product_Name, Sale_Amount FROM Sales_2024
) CombinedSales;


#29. Use LIMIT or TOP to fetch the top 10 customers by total sales amount:

SELECT Customer_Name, SUM(Sale_Amount) AS TotalSales
FROM (
    SELECT Customer_Name, Sale_Amount FROM Sales_2023
    UNION ALL
    SELECT Customer_Name, Sale_Amount FROM Sales_2024
) CombinedSales
GROUP BY Customer_Name
ORDER BY TotalSales DESC
LIMIT 10;

#30. List all customers who purchased only in 2023 but not in 2024.

SELECT DISTINCT s23.customer_ID, s23.customer_name
FROM sales_2023 s23
LEFT JOIN sales_2024 s24
ON s23.customer_ID = s24.customer_ID
WHERE s24.customer_ID IS NULL;

