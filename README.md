# 📊 SQL Project: Electronics Sales Analysis
<br>

## 📝 Objectives

### Database Setup
Create and populate an electronics sales database using sales data from 2023 and 2024.

### Data Cleaning
Identify and remove records with missing or null values.

### Exploratory Data Analysis (EDA)
Perform preliminary analysis to understand key metrics and structure of the data.

### Business Analysis
Use SQL queries to answer real-world business questions and uncover actionable insights.
<br>
<br>
## 🗂️ Project Structure

### 1. 📦 Database Setup

#### Database Creation
<pre> ```sql
CREATE DATABASE electronics_sales;
```</pre> 
  
#### Table Creation
Two tables: sales_2023 and sales_2024, structured as follows:
<br>
<pre> ```sql
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
);
```</pre> 

##### Same structure for sales_2024
<br>

### 2. 🧹 Data Exploration & Cleaning

#### Record Count
<pre> ```sql
SELECT COUNT(*) FROM sales_2023;
```</pre> 

#### Unique Customers
<pre> ```sql
SELECT COUNT(DISTINCT customer_ID) FROM sales_2023;
```</pre>   

#### Category Count
<pre> ```sql
SELECT COUNT(DISTINCT category) FROM sales_2023;
```</pre>   

#### Null Value Check and Deletion

<pre> ```sql
SELECT * FROM sales_2023<br>
WHERE product_id IS NULL OR product_name IS NULL OR category IS NULL OR brand IS NULL<br>
  OR customer_ID IS NULL OR customer_name IS NULL OR sale_date IS NULL<br>
  OR sale_amount IS NULL OR sale_quantity IS NULL OR discount IS NULL<br>
  OR payment_method IS NULL OR region IS NULL OR store IS NULL OR profit IS NULL;
```</pre>   
<br>
  
<pre> ```sql
DELETE FROM sales_2023<br>
WHERE product_id IS NULL OR product_name IS NULL OR category IS NULL OR brand IS NULL<br>
  OR customer_ID IS NULL OR customer_name IS NULL OR sale_date IS NULL<br>
  OR sale_amount IS NULL OR sale_quantity IS NULL OR discount IS NULL<br>
  OR payment_method IS NULL OR region IS NULL OR store IS NULL OR profit IS NULL;
```</pre>   


##### Repeat for sales_2024
<br>

### 3. 📊 Data Analysis & Insights
The following SQL queries address 30 business-focused questions using the data:
<br>

#### 📌 Sample Questions:

**Combine sales data from 2023 and 2024**
<br>

<pre> ```sql
SELECT * FROM sales_2023<br>
UNION<br>
SELECT * FROM sales_2024;
```</pre>   
<br>

**Total profit and sales amount by year**<br>

<pre> ```sql
SELECT SUM(profit) FROM sales_2023;<br>
SELECT SUM(sale_amount) FROM sales_2023;
```</pre>   
<br>

**Sales quantity by brand**<br>

<pre> ```sql
SELECT brand, SUM(sale_quantity) FROM sales_2023 GROUP BY brand;
```</pre>   
<br>

**Top-selling product**
<br>

<pre> ```sql
SELECT product_name, SUM(sale_quantity)<br>
FROM sales_2023<br>
GROUP BY product_name<br>
ORDER BY SUM(sale_quantity) DESC<br>
LIMIT 1;
```</pre>   
<br>

#### Sales trends, regions, stores, and customers analysis includes:
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

#### ✔️ All 30 queries are well-structured and use core SQL concepts: JOIN, GROUP BY, HAVING, CASE, UNION, LIMIT.
<br>

## 📈 Conclusion

**This project provides a hands-on introduction to SQL for aspiring data analysts. It covers:**
<br>
<br>
Realistic database design<br>
<br>
Practical data cleaning<br>
<br>
Exploratory and descriptive analytics<br>
<br>
Business-focused query development<br>
<br>
**The insights generated offer a deeper understanding of:**<br>
<br>
Customer behavior<br>
<br>
Regional and seasonal sales patterns<br>
<br>
Top products and stores<br>
<br>
Year-over-year comparisons<br>
<br>

## 💻 Tools & Technologies
SQL (MySQL)<br>
MySQL Workbench<br>
<br>

## 👨‍💻 Author
Iqra Izhar<br>
[GitHub](https://github.com/iqraizhar72/) • [LinkedIn](https://www.linkedin.com/in/iqra-izhar-08b8b8330/)
