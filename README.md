<h1>📊 SQL Project: Electronics Sales Analysis</h1>

<h2>📝 Objectives</h2>

<h3>Database Setup</h3>
Create and populate an electronics sales database using sales data from 2023 and 2024.
<h3>Data Cleaning</h3>
Identify and remove records with missing or null values.
<h3>Exploratory Data Analysis (EDA)</h3>
Perform preliminary analysis to understand key metrics and structure of the data.
<h3>Business Analysis</h3>
Use SQL queries to answer real-world business questions and uncover actionable insights.
<h2>🗂️ Project Structure</h2>
<h3>1. 📦 Database Setup</h3>
<h4>Database Creation</h4>
<br>
<i>sql query:</i><br>
CREATE DATABASE electronics_sales;<br>
<br>
<h4>Table Creation</h4>
Two tables: sales_2023 and sales_2024, structured as follows:
<br>
<br>
<i>sql query:</i><br>
CREATE TABLE sales_2023 (<br>
  sale_ID INT AUTO_INCREMENT PRIMARY KEY,<br>
  product_id INT NOT NULL,<br>
  product_name VARCHAR(50) NOT NULL,<br>
  category VARCHAR(50) NOT NULL,<br>
  brand VARCHAR(50) NOT NULL,<br>
  customer_ID INT NOT NULL,<br>
  customer_name VARCHAR(50) NOT NULL,<br>
  sale_date DATE NOT NULL,<br>
  sale_amount INT NOT NULL,<br>
  sale_quantity INT DEFAULT 1 NOT NULL,<br>
  discount INT NOT NULL,<br>
  payment_method VARCHAR(50) NOT NULL,<br>
  region VARCHAR(50) NOT NULL,<br>
  store VARCHAR(50) NOT NULL,<br>
  profit INT NOT NULL<br>
);<br>
<h5>Same structure for sales_2024</h5>
<br>
<h3>2. 🧹 Data Exploration & Cleaning</h3>
<h4>Record Count</h4>
<br>
<i>sql query:</i><br>
SELECT COUNT(*) FROM sales_2023;<br>
<br>
<h4>Unique Customers</h4>
<br>
<i>sql query:</i><br>
SELECT COUNT(DISTINCT customer_ID) FROM sales_2023;<br>
<br>
<h4>Category Count</h4>
<br>
<i>sql query:</i><br>
SELECT COUNT(DISTINCT category) FROM sales_2023;<br>
<br>
<h4>Null Value Check and Deletion</h4>
<br>
<i>sql query:</i><br>
SELECT * FROM sales_2023<br>
WHERE product_id IS NULL OR product_name IS NULL OR category IS NULL OR brand IS NULL<br>
  OR customer_ID IS NULL OR customer_name IS NULL OR sale_date IS NULL<br>
  OR sale_amount IS NULL OR sale_quantity IS NULL OR discount IS NULL<br>
  OR payment_method IS NULL OR region IS NULL OR store IS NULL OR profit IS NULL;<br>
  <br>
<i>sql query:</i><br>
DELETE FROM sales_2023<br>
WHERE product_id IS NULL OR product_name IS NULL OR category IS NULL OR brand IS NULL<br>
  OR customer_ID IS NULL OR customer_name IS NULL OR sale_date IS NULL<br>
  OR sale_amount IS NULL OR sale_quantity IS NULL OR discount IS NULL<br>
  OR payment_method IS NULL OR region IS NULL OR store IS NULL OR profit IS NULL;<br>
<br>
<h5>Repeat for sales_2024</h5>
<br>
<h3>4. 📊 Data Analysis & Insights</h3>
The following SQL queries address 30 business-focused questions using the data:
<br>
<h4>📌 Sample Questions:</h4>

<b>Combine sales data from 2023 and 2024</b>
<br>
<br>
<i>sql query:</i><br>
SELECT * FROM sales_2023<br>
UNION<br>
SELECT * FROM sales_2024;<br>
<br>
<b>Total profit and sales amount by year</b><br>
<br>
<i>sql query:</i><br>
SELECT SUM(profit) FROM sales_2023;<br>
SELECT SUM(sale_amount) FROM sales_2023;<br>
-- Repeat for sales_2024<br>
<br>
<b>Sales quantity by brand</b><br>

<br>
<i>sql query:</i><br>
SELECT brand, SUM(sale_quantity) FROM sales_2023 GROUP BY brand;<br>
<br>
<b>Top-selling product</b><br>

<br>
<i>sql query:</i><br>
SELECT product_name, SUM(sale_quantity)<br>
FROM sales_2023<br>
GROUP BY product_name<br>
ORDER BY SUM(sale_quantity) DESC<br>
LIMIT 1;<br>
<br>
<h4>Sales trends, regions, stores, and customers analysis includes:</h4><br>
<br>
Monthly and quarterly breakdowns<br>
<br>
Regional sales performance<br>
<br>
Top 10 customers<br>
<br>
High/medium/low sales classification<br>
<br>
Customers active in both years or only one<br>
<br>
<h4>✔️ All 30 queries are well-structured and use core SQL concepts: JOIN, GROUP BY, HAVING, CASE, UNION, LIMIT.</h4>
<br>
<h2>📈 Conclusion</h2>
<br>
<br>
<b>This project provides a hands-on introduction to SQL for aspiring data analysts. It covers:</b>
<br>
<br>
Realistic database design<br>

Practical data cleaning<br>

Exploratory and descriptive analytics<br>

Business-focused query development<br>
<br>
The insights generated offer a deeper understanding of:
<br>
Customer behavior<br>

Regional and seasonal sales patterns<br>

Top products and stores<br>

Year-over-year comparisons<br>
<br>
<h2>💻 Tools & Technologies</h2>
SQL (MySQL)<br>

MySQL Workbench<br>
<br>
<h2>👨‍💻 Author</h2>
Iqra Izhar<br>
GitHub • LinkedIn
