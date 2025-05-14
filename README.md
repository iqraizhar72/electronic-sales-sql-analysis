📊 SQL Project: Electronics Sales Analysis
📝 Objectives
Database Setup<br>
Create and populate an electronics sales database using sales data from 2023 and 2024.

Data Cleaning<br>
Identify and remove records with missing or null values.

Exploratory Data Analysis (EDA)<br>
Perform preliminary analysis to understand key metrics and structure of the data.

Business Analysis<br>
Use SQL queries to answer real-world business questions and uncover actionable insights.

🗂️ Project Structure
1. 📦 Database Setup
Database Creation

sql
Copy
Edit
CREATE DATABASE electronics_sales;
Table Creation<br>
Two tables: sales_2023 and sales_2024, structured as follows:

sql
Copy
Edit
CREATE TABLE sales_2023 (
  sale_ID INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT NOT NULL,
  product_name VARCHAR(50) NOT NULL,
  category VARCHAR(50) NOT NULL,
  brand VARCHAR(50) NOT NULL,
  customer_ID INT NOT NULL,
  customer_name VARCHAR(50) NOT NULL,
  sale_date DATE NOT NULL,
  sale_amount INT NOT NULL,
  sale_quantity INT DEFAULT 1 NOT NULL,
  discount INT NOT NULL,
  payment_method VARCHAR(50) NOT NULL,
  region VARCHAR(50) NOT NULL,
  store VARCHAR(50) NOT NULL,
  profit INT NOT NULL
);
Same structure for sales_2024

2. 🧹 Data Exploration & Cleaning
Record Count

sql
Copy
Edit
SELECT COUNT(*) FROM sales_2023;
Unique Customers

sql
Copy
Edit
SELECT COUNT(DISTINCT customer_ID) FROM sales_2023;
Category Count

sql
Copy
Edit
SELECT COUNT(DISTINCT category) FROM sales_2023;
Null Value Check and Deletion

sql
Copy
Edit
SELECT * FROM sales_2023
WHERE product_id IS NULL OR product_name IS NULL OR category IS NULL OR brand IS NULL
  OR customer_ID IS NULL OR customer_name IS NULL OR sale_date IS NULL
  OR sale_amount IS NULL OR sale_quantity IS NULL OR discount IS NULL
  OR payment_method IS NULL OR region IS NULL OR store IS NULL OR profit IS NULL;
sql
Copy
Edit
DELETE FROM sales_2023
WHERE product_id IS NULL OR product_name IS NULL OR category IS NULL OR brand IS NULL
  OR customer_ID IS NULL OR customer_name IS NULL OR sale_date IS NULL
  OR sale_amount IS NULL OR sale_quantity IS NULL OR discount IS NULL
  OR payment_method IS NULL OR region IS NULL OR store IS NULL OR profit IS NULL;
Repeat for sales_2024

3. 📊 Data Analysis & Insights
The following SQL queries address 30 business-focused questions using the data:

📌 Sample Questions:
Combine sales data from 2023 and 2024

sql
Copy
Edit
SELECT * FROM sales_2023
UNION
SELECT * FROM sales_2024;
Total profit and sales amount by year

sql
Copy
Edit
SELECT SUM(profit) FROM sales_2023;
SELECT SUM(sale_amount) FROM sales_2023;
-- Repeat for sales_2024
Sales quantity by brand

sql
Copy
Edit
SELECT brand, SUM(sale_quantity) FROM sales_2023 GROUP BY brand;
Top-selling product

sql
Copy
Edit
SELECT product_name, SUM(sale_quantity)
FROM sales_2023
GROUP BY product_name
ORDER BY SUM(sale_quantity) DESC
LIMIT 1;
Sales trends, regions, stores, and customers analysis includes:
Monthly and quarterly breakdowns<br>

Regional sales performance<br>

Top 10 customers<br>

High/medium/low sales classification<br>

Customers active in both years or only one<br>

✔️ All 30 queries are well-structured and use core SQL concepts: JOIN, GROUP BY, HAVING, CASE, UNION, LIMIT.

📈 Conclusion
This project provides a hands-on introduction to SQL for aspiring data analysts. It covers:

Realistic database design<br>

Practical data cleaning<br>

Exploratory and descriptive analytics<br>

Business-focused query development<br>

The insights generated offer a deeper understanding of:

Customer behavior<br>

Regional and seasonal sales patterns<br>

Top products and stores<br>

Year-over-year comparisons<br>

💻 Tools & Technologies
SQL (MySQL)<br>

MySQL Workbench<br>

👨‍💻 Author
Iqra Izhar<br>
GitHub • LinkedIn
