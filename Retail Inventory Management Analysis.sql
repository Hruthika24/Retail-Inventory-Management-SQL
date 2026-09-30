CREATE DATABASE retail_inventory_db;
USE retail_inventory_db;

CREATE TABLE suppliers (supplier_id INT PRIMARY KEY, 
supplier_name VARCHAR(100), 
city VARCHAR(50) );

INSERT INTO suppliers (supplier_id, supplier_name, city) VALUES
(1, 'ABC Distributors', 'Mumbai'),
(2, 'Global Traders', 'Delhi'),
(3, 'Prime Supplies', 'Bangalore'),
(4, 'NextGen Wholesale', 'Hyderabad'),
(5, 'Metro Suppliers', 'Chennai'),
(6, 'Star Distributors', 'Pune'),
(7, 'Reliable Traders', 'Kolkata'),
(8, 'Smart Wholesale', 'Ahmedabad'),
(9, 'Elite Supplies', 'Jaipur'),
(10, 'National Distributors', 'Lucknow');

CREATE TABLE products ( product_id INT PRIMARY KEY, 
product_name VARCHAR(100), 
category VARCHAR(50), 
supplier_id INT, 
unit_price DECIMAL(10,2),
FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id) );

INSERT INTO products
(product_id, product_name, category, supplier_id, unit_price) VALUES
(101, 'Laptop', 'Electronics', 1, 65000),
(102, 'Wireless Mouse', 'Electronics', 1, 1200),
(103, 'Keyboard', 'Electronics', 2, 1800),
(104, 'Monitor', 'Electronics', 3, 15000),
(105, 'Printer', 'Electronics', 4, 12000),
(106, 'Headphones', 'Electronics', 5, 2500),
(107, 'Webcam', 'Electronics', 6, 3500),
(108, 'USB Hub', 'Electronics', 7, 1500),
(109, 'External Hard Drive', 'Electronics', 8, 6500),
(110, 'Power Bank', 'Electronics', 9, 2200),

(111, 'Office Chair', 'Furniture', 2, 7500),
(112, 'Study Table', 'Furniture', 3, 12000),
(113, 'Bookshelf', 'Furniture', 4, 8500),
(114, 'Office Desk', 'Furniture', 5, 15000),
(115, 'Filing Cabinet', 'Furniture', 6, 9000),
(116, 'Visitor Chair', 'Furniture', 7, 4500),
(117, 'Computer Table', 'Furniture', 8, 11000),
(118, 'Conference Table', 'Furniture', 9, 25000),
(119, 'Storage Rack', 'Furniture', 10, 7000),
(120, 'Drawer Unit', 'Furniture', 1, 5500),

(121, 'Water Bottle', 'Home', 4, 600),
(122, 'Coffee Mug', 'Home', 5, 350),
(123, 'Lunch Box', 'Home', 6, 750),
(124, 'Electric Kettle', 'Home', 7, 1800),
(125, 'Table Lamp', 'Home', 8, 1500),
(126, 'Wall Clock', 'Home', 9, 1200),
(127, 'Extension Board', 'Home', 10, 900),
(128, 'Cleaning Kit', 'Home', 1, 650),
(129, 'Dustbin', 'Home', 2, 800),
(130, 'Storage Box', 'Home', 3, 1000);

CREATE TABLE inventory ( inventory_id INT PRIMARY KEY, 
product_id INT, 
stock_quantity INT, 
reorder_level INT, 
last_updated DATE, 
FOREIGN KEY (product_id) REFERENCES products(product_id) );

INSERT INTO inventory
(inventory_id, product_id, stock_quantity, reorder_level, last_updated) VALUES
(1,101,25,10,'2025-06-30'),
(2,102,120,30,'2025-06-30'),
(3,103,15,20,'2025-06-30'),
(4,104,8,10,'2025-06-30'),
(5,105,0,8,'2025-06-30'),
(6,106,65,20,'2025-06-30'),
(7,107,12,15,'2025-06-30'),
(8,108,90,25,'2025-06-30'),
(9,109,35,10,'2025-06-30'),
(10,110,5,15,'2025-06-30'),

(11,111,18,8,'2025-06-30'),
(12,112,12,5,'2025-06-30'),
(13,113,4,10,'2025-06-30'),
(14,114,20,8,'2025-06-30'),
(15,115,7,10,'2025-06-30'),
(16,116,30,10,'2025-06-30'),
(17,117,10,8,'2025-06-30'),
(18,118,3,5,'2025-06-30'),
(19,119,22,8,'2025-06-30'),
(20,120,15,5,'2025-06-30'),

(21,121,250,50,'2025-06-30'),
(22,122,180,40,'2025-06-30'),
(23,123,75,25,'2025-06-30'),
(24,124,30,15,'2025-06-30'),
(25,125,6,15,'2025-06-30'),
(26,126,45,20,'2025-06-30'),
(27,127,2,10,'2025-06-30'),
(28,128,100,30,'2025-06-30'),
(29,129,0,15,'2025-06-30'),
(30,130,60,20,'2025-06-30');

CREATE TABLE sales ( sale_id INT PRIMARY KEY, 
product_id INT, 
sale_date DATE, 
quantity_sold INT, 
sales_amount DECIMAL(10,2), 
FOREIGN KEY (product_id) REFERENCES products(product_id) );

INSERT INTO sales
(sale_id, product_id, sale_date, quantity_sold, sales_amount) VALUES
(1001,101,'2025-01-05',2,130000),
(1002,102,'2025-01-05',8,9600),
(1003,103,'2025-01-06',5,9000),
(1004,104,'2025-01-08',3,45000),
(1005,105,'2025-01-10',2,24000),
(1006,106,'2025-01-12',12,30000),
(1007,107,'2025-01-15',4,14000),
(1008,108,'2025-01-18',15,22500),
(1009,109,'2025-01-20',6,39000),
(1010,110,'2025-01-22',10,22000),

(1011,111,'2025-01-25',4,30000),
(1012,112,'2025-01-26',2,24000),
(1013,113,'2025-01-27',1,8500),
(1014,114,'2025-01-28',3,45000),
(1015,115,'2025-01-29',2,18000),
(1016,116,'2025-01-30',6,27000),
(1017,117,'2025-01-31',3,33000),

(1018,121,'2025-02-02',25,15000),
(1019,122,'2025-02-03',30,10500),
(1020,123,'2025-02-05',15,11250),
(1021,124,'2025-02-06',8,14400),
(1022,125,'2025-02-08',5,7500),
(1023,126,'2025-02-10',12,14400),
(1024,127,'2025-02-12',20,18000),
(1025,128,'2025-02-15',18,11700),
(1026,129,'2025-02-17',10,8000),
(1027,130,'2025-02-20',15,15000),

(1028,101,'2025-02-22',3,195000),
(1029,102,'2025-02-23',15,18000),
(1030,103,'2025-02-25',10,18000),
(1031,104,'2025-02-27',5,75000),
(1032,106,'2025-02-28',18,45000),

(1033,101,'2025-03-02',4,260000),
(1034,102,'2025-03-03',20,24000),
(1035,103,'2025-03-05',12,21600),
(1036,104,'2025-03-07',4,60000),
(1037,105,'2025-03-09',3,36000),
(1038,106,'2025-03-10',20,50000),
(1039,107,'2025-03-12',8,28000),
(1040,108,'2025-03-14',25,37500),

(1041,111,'2025-03-15',6,45000),
(1042,112,'2025-03-17',4,48000),
(1043,113,'2025-03-18',2,17000),
(1044,114,'2025-03-20',5,75000),
(1045,115,'2025-03-22',3,27000),
(1046,116,'2025-03-24',8,36000),
(1047,117,'2025-03-26',5,55000),

(1048,121,'2025-03-28',35,21000),
(1049,122,'2025-03-29',45,15750),
(1050,123,'2025-03-30',20,15000),

(1051,101,'2025-04-02',5,325000),
(1052,102,'2025-04-04',25,30000),
(1053,103,'2025-04-06',15,27000),
(1054,104,'2025-04-08',6,90000),
(1055,105,'2025-04-10',4,48000),
(1056,106,'2025-04-12',25,62500),
(1057,107,'2025-04-14',10,35000),
(1058,108,'2025-04-16',30,45000),
(1059,109,'2025-04-18',10,65000),
(1060,110,'2025-04-20',15,33000),

(1061,111,'2025-04-22',8,60000),
(1062,112,'2025-04-24',5,60000),
(1063,113,'2025-04-25',3,25500),
(1064,114,'2025-04-26',7,105000),
(1065,115,'2025-04-27',4,36000),

(1066,121,'2025-05-01',45,27000),
(1067,122,'2025-05-03',50,17500),
(1068,123,'2025-05-05',25,18750),
(1069,124,'2025-05-07',12,21600),
(1070,125,'2025-05-09',8,12000),
(1071,126,'2025-05-11',20,24000),
(1072,127,'2025-05-13',30,27000),
(1073,128,'2025-05-15',25,16250),
(1074,129,'2025-05-17',15,12000),
(1075,130,'2025-05-19',20,20000),

(1076,101,'2025-05-20',6,390000),
(1077,102,'2025-05-22',30,36000),
(1078,103,'2025-05-24',18,32400),
(1079,104,'2025-05-26',7,105000),
(1080,106,'2025-05-28',30,75000),

(1081,111,'2025-06-01',10,75000),
(1082,112,'2025-06-03',6,72000),
(1083,113,'2025-06-05',4,34000),
(1084,114,'2025-06-07',8,120000),
(1085,115,'2025-06-09',5,45000),
(1086,116,'2025-06-11',10,45000),
(1087,117,'2025-06-13',7,77000),
(1088,118,'2025-06-15',2,50000),
(1089,119,'2025-06-17',5,35000),
(1090,120,'2025-06-19',4,22000),

(1091,121,'2025-06-20',50,30000),
(1092,122,'2025-06-21',60,21000),
(1093,123,'2025-06-22',30,22500),
(1094,124,'2025-06-23',15,27000),
(1095,125,'2025-06-24',10,15000),
(1096,126,'2025-06-25',25,30000),
(1097,127,'2025-06-26',35,31500),
(1098,128,'2025-06-27',30,19500),
(1099,129,'2025-06-28',20,16000),
(1100,130,'2025-06-29',25,25000);

-- Basic SQL

SELECT * FROM PRODUCTS;
SELECT product_name,category from products;
SELECT product_name,category,unit_price from products where category="Electronics";
SELECT product_name,category,unit_price from products where unit_price>10000;
SELECT product_name,category,unit_price from products where unit_price BETWEEN 1000 AND 10000;
SELECT product_name,category,unit_price from products where product_name like '%Table%';
SELECT product_name,category,unit_price from products ORDER BY unit_price desc limit 5 ;
Select distinct category from products;

-- Basic Aggregate Functions
Select count(*) from products;
Select count(*) from suppliers;
select avg(unit_price) from products;
select max(unit_price) from products;
select min(unit_price) from products;

-- GROUP BY
select category,count(*) from products group by category;
select category,avg(unit_price) from products group by category;
select category,max(unit_price) from products group by category;
SELECT 
    category, min(unit_price)
FROM
    products
GROUP BY category;
SELECT 
    p.category, SUM(i.inventory_id) total_inventory
FROM
    products p
        JOIN
    inventory i ON p.product_id = i.product_id
GROUP BY p.category;

-- Sales Analysis
-- Find total quantity sold for each product.
select product_id,count(quantity_sold) as total_quantity_sold from sales group by product_id;

-- Find total revenue generated by each product.
select product_id,sum(sales_amount) from sales group by product_id;

-- Find total revenue for each category.
SELECT 
    p.category, SUM(s.sales_amount)
FROM
    products p
        JOIN
    sales s ON p.product_id = s.product_id
GROUP BY category;

-- Find total quantity sold for each category.
SELECT 
    p.category, SUM(s.quantity_sold)
FROM
    products p
        JOIN
    sales s ON p.product_id = s.product_id
GROUP BY category;

-- Find average sales amount per product.
select product_id,avg(sales_amount) from sales group by product_id;

-- Which product generated the highest total revenue?
select p.product_id,p.product_name,max(s.sales_amount) as avg_rev from products p join sales s on p.product_id=s.product_id group by p.product_id,p.product_name order by avg_rev limit 1;

-- Which product sold the highest quantity?
select p.product_id,p.product_name,sum(s.quantity_sold) as highest from products p join sales s on p.product_id=s.product_id group by p.product_id,p.product_name order by highest desc limit 1;

-- Find the total inventory value for each category.
select p.category,sum(i.stock_quantity * p.unit_price) as inventory_price from products p join inventory i on p.product_id=i.product_id group by p.category;

-- Find categories having more than 10 products.
select category,count(*) as product_count from products group by category having count(*)>=10;

-- Find products whose total quantity sold is greater than 50.
select product_id,sum(quantity_sold) as product_count from sales group by product_id having product_count>50;

-- Find products generating more than ₹1,00,000 in total revenue.
select product_id,sum(sales_amount) as total_revenue from sales group by product_id having total_revenue>100000;

-- Find categories whose total revenue exceeds ₹5,00,000
select p.category,sum(s.sales_amount) as total_revenue from products p join sales s on p.product_id=s.product_id group by p.category having total_revenue >500000;

-- Find the top 5 products based on total revenue and display
SELECT 
    p.product_id,
    p.product_name,
    p.category,
    SUM(s.quantity_sold) AS total_quantity_sold,
    SUM(s.sales_amount) AS total_revenue
FROM products p
JOIN sales s 
    ON p.product_id = s.product_id
GROUP BY 
    p.product_id,
    p.product_name,
    p.category
ORDER BY total_revenue DESC
LIMIT 5;

# CASE WHEN
select p.product_name,i.stock_quantity,i.reorder_level,
CASE
WHEN i.stock_quantity = 0 THEN 'OUT OF STOCK'
WHEN i.stock_quantity < i.reorder_level  THEN 'LOW STOCK'
ELSE 'IN STOCK'
END AS Stock_Status
from products p
JOIN inventory i
on p.product_id=i.product_id; 

select p.product_name,i.stock_quantity,i.reorder_level,
CASE
WHEN i.stock_quantity=0 THEN 'OUT OF STOCK'
WHEN i.stock_quantity < i.reorder_level  THEN 'LOW STOCK'
ELSE 'IN STOCK'
END AS Stock_Status
from products p
JOIN inventory i
on p.product_id=i.product_id; 

select p.product_name,i.stock_quantity,i.reorder_level,
CASE
WHEN i.stock_quantity <= i.reorder_level  THEN 'REOREDER REQUIRED'
ELSE 'NO REORDER'
END AS Reorder_Status
from products p
JOIN inventory i
on p.product_id=i.product_id; 

select product_name,unit_price,category,
CASE 
WHEN unit_price < 1000 THEN 'BUDGET'
WHEN unit_price between 1000 and 10000 THEN 'MID RANGE'
ELSE 'PREMIUM'
END AS Price_Category
from products; 

SELECT 
    product_id,
    SUM(quantity_sold) AS total_quantity_sold,
    CASE
        WHEN SUM(quantity_sold) > 100 THEN 'FAST MOVING'
        WHEN SUM(quantity_sold) BETWEEN 50 AND 100 THEN 'MODERATE'
        ELSE 'SLOW MOVING'
    END AS movement_status
FROM sales
GROUP BY product_id;

SELECT 
    p.product_name,i.stock_quantity,i.reorder_level,
    CASE
        WHEN stock_quantity =0  THEN 'OUT OF STOCK'
        WHEN stock_quantity < reorder_level BETWEEN 50 AND 100 THEN 'REORDER NOW'
        WHEN stock_quantity <= reorder_level*2  THEN 'MONITOR'
        ELSE 'HEALTHY'
    END AS movement_status
FROM products p 
JOIN inventory i
ON p.product_id	= i.product_id;

SELECT p.product_name,i.stock_quantity,p.unit_price,
stock_quantity*unit_price AS inventory_value, 
CASE 
WHEN (i.stock_quantity*p.unit_price) > 500000 THEN 'HIGH VALUE'
WHEN (i.stock_quantity*p.unit_price) between 100000 and 500000 THEN 'MEDIUM VALUE'
ELSE 'LOW VALUE'
end as inventory_status
from products p
join inventory i
on p.product_id = i.product_id;

# SUBQUERIES
# Find all products whose unit_price is greater than the average price of all products.
select product_name,category,unit_price from products
where unit_price>(select avg(unit_price) from products);

# Find products whose total quantity sold is greater than the average total quantity sold per product.
SELECT 
    p.product_id,
    p.product_name,
    SUM(s.quantity_sold) AS total_quantity_sold
FROM products p
JOIN sales s
    ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(s.quantity_sold) > (
    SELECT AVG(total_quantity_sold)
    FROM (
        SELECT 
            product_id,
            SUM(quantity_sold) AS total_quantity_sold
        FROM sales
        GROUP BY product_id
    ) AS product_sales
);

#Find products that have never been sold.
select product_id,product_name,category from products where product_id not in (
select product_id from sales);

#Find products whose total revenue is greater than the average total revenue per product.
select p.product_id,p.product_name,sum(s.sales_amount) as total_rev from products p join sales s on p.product_id=s.product_id 
group by p.product_id,p.product_name having sum(sales_amount) > (
select avg(rev) from (
select product_id,sum(sales_amount) as rev from sales group by product_id ) as product_revenue);

#Find the product with the highest total revenue.
select p.product_id,p.product_name,sum(s.sales_amount) as total_revenue from products p join sales s on p.product_id=s.product_id 
group by p.product_id having sum(sales_amount)=(
select max(rev) from (
select product_id,sum(sales_amount) as rev from sales group by product_id) as highest_rev);

#Find the products whose unit price is higher than the average unit price of their own category.
select p.product_id,p.product_name,p.category,p.unit_price from products p where p.unit_price>(
select avg(p2.unit_price) from products p2 where p2.category=p.category);


#CTEs
#Find the total revenue generated by each product using a CTE.
with total_revenue as(
select product_id,sum(sales_amount) as rev from sales group by product_id)
select p.product_id,p.product_name,tr.rev from products p join total_revenue tr
on p.product_id=tr.product_id ;

#Find the average total revenue per product using a CTE.
with total_revenue as (
select product_id,sum(sales_amount) as sum_Sales from sales group by product_id)
select avg(sum_Sales) from total_revenue;

#Find the products whose total revenue is greater than the average total revenue per product, using a CTE.
with total_revenue as(select product_id,sum(sales_amount) as rev from sales group by product_id)
select p.product_id,p.product_name,tr.rev from products p join total_revenue tr on p.product_id=tr.product_id 
where tr.rev > (select avg(rev) from total_revenue);

#Find the highest-revenue product in each category using a CTE.
with total_revenue as(
select p.product_id,p.product_name,p.category,sum(s.sales_amount) as rev from products p join sales s on p.product_id=s.product_id 
group by p.product_id,p.product_name,p.category )
select product_id,product_name,category,rev as revenue from total_revenue tr 
where rev=(select max(tr2.rev) from total_revenue tr2 where tr2.category=tr.category);

#Find each category's total revenue and display only categories whose total revenue is greater than ₹500,000.
with categoryy as(select p.category,sum(s.sales_amount) as total_revenue from products p join sales s on p.product_id=s.product_id group by p.category)
select category,total_revenue from categoryy where total_revenue >500000;

#Find the category with the highest total revenue using a CTE.
with highest as(select p.category,sum(s.sales_amount) as total_revenue from products p join sales s on p.product_id=s.product_id group by p.category)
select category,total_revenue from highest where total_revenue = (select max(total_revenue) from highest);

#Find the products that have sold more units than the average quantity sold per product.
with quantity as(select product_id,sum(quantity_sold) as total_quantities from sales group by product_id)
select p.product_id,p.product_name,q.total_quantities from products p join quantity q on p.product_id=q.product_id  
where total_quantities >(select avg(total_quantities) from quantity);

#Find the top 3 products by total revenue using a CTE.
with total_revenue as (
select product_id,sum(sales_amount) as total_rev from sales group by product_id)
select p.product_id,p.product_name,tr.total_rev from products p join total_revenue tr on p.product_id=tr.product_id
order by tr.total_rev desc limit 3;

#WINDOW FUNCTIONS
#Find the rank of every product based on its total revenue, from highest to lowest.
select p.product_id,p.product_name,p.category,sum(s.sales_amount) as total_revenue,
RANK() over(
order by sum(s.sales_amount) desc ) as revenue_rank
from products p join sales s on p.product_id=s.product_id 
group by p.product_id,p.product_name,p.category;

#Rank products separately within each category based on their total quantity sold.
select p.product_id,p.product_name,p.category,sum(s.quantity_sold) as total_quantity_sold,
rank() over(partition by category order by sum(s.quantity_sold) desc) as category_rank
from products p join sales s on p.product_id=s.product_id 
group by p.product_id,p.product_name,p.category;

#The manager wants to identify the top 2 products in each category based on total revenue.
with ranked_products as (select p.product_id,p.product_name,p.category,sum(s.sales_amount) as total_revenue,
rank() over(partition by category order by sum(s.sales_amount) desc) as revenue_rank
from products p join sales s on p.product_id=s.product_id group by p.product_id,p.product_name,p.category)
select product_id,product_name,category,total_revenue,revenue_rank from ranked_products where revenue_rank<=2; ;

#Find #1 product in each category by quantity sold
with ranked_products as (
select p.product_id,p.product_name,p.category,sum(s.quantity_sold) as total_quantity_sold,rank() over(partition by category order by sum(quantity_sold)
desc ) as quantity_rank from products p join sales s on p.product_id =s.product_id group by p.product_id,p.product_name,p.category)
select product_id,product_name,category,total_quantity_sold,quantity_rank from ranked_products where quantity_rank =1;

#Calculate a running total of sales revenue by date
WITH daily_sales AS (
    SELECT 
        sale_date,
        SUM(sales_amount) AS daily_revenue
    FROM sales
    GROUP BY sale_date
)
SELECT 
    sale_date,
    daily_revenue,
    SUM(daily_revenue) OVER (
        ORDER BY sale_date
    ) AS running_total
FROM daily_sales
ORDER BY sale_date;

#Compare each sale with the previous sale using LAG()
select sale_id,sale_date,sales_amount,lag(sales_amount) over(order by sale_date) as prevs_Sales_Amount from sales;

#The sales manager wants to know whether each sale was higher or lower than the previous sale.
select sale_id,sale_date,sales_amount,lag(sales_amount) over(order by sale_date) as prevs_Sales_Amount,
sales_amount - LAG(sales_amount) over(order by sale_Date) as diff from sales;

#The inventory manager wants to identify the highest-value products within each category.
with inventory_value as(
select p.product_id,p.product_name,p.category,i.stock_quantity * p.unit_price as inventory_value from products p join 
inventory i on
p.product_id=i.product_id )
select product_id,product_name,category,inventory_value,rank() over(partition by category order by inventory_value desc) as 
category_rank from inventory_value;

#Date & Time Functions
#Display each sale's:sale_id,sale_date,year of sale,month of sale,month name
select sale_id,sale_date,year(sale_date) as only_year,month(sale_date) as only_month,monthname(sale_date) as month_name from sales;

#For the retail sales analysis, the manager wants to know which day of the week sales are happening.
select sale_id,sale_date,dayname(sale_date) as day_of_the_Week from sales;

#Calculate the number of days between two dates using DATEDIFF()
select sale_id,sale_date,datediff(current_date(),sale_date) as date_Differ from sales;

#Find sales made in a specific month/year
select product_id,sale_id,sale_date,quantity_sold,sales_amount from sales where year(sale_date)=2025 and month(sale_date)=3; 

#Calculate the total revenue for each month in 2025.
select sum(sales_amount) as total_revenue,month(sale_date) as sale_month from sales where year(sale_date)=2025 group by month(sale_date)
order by month(sale_date) ;

#Find the total revenue for each month in 2025 and display the month name along with the revenue.
select sum(sales_amount) as total_revenue,monthname(sale_date) as sale_month from sales where year(sale_date)=2025 group by month(sale_date), monthname(sale_date)
order by month(sale_date) ;

#Find how many days have passed since each product's last inventory update.
select p.product_id,p.product_name,i.last_updated,datediff(current_Date(),i.last_updated) as last_inventory from products p join 
inventory i on p.product_id=i.product_id;

#Find the total revenue generated in each quarter of 2025.
select sum(sales_amount)as total_revenue,quarter(sale_date) from sales where year(sale_date)=2025 group by quarter(sale_date);

#Advanced Inventory KPIs
#Calculate the current inventory value for each product.
select p.product_id,p.product_name,p.category,i.stock_quantity,p.unit_price,(i.stock_quantity*p.unit_price) as inventory_value from
products p join inventory i on p.product_id=i.product_id;

#Find all products that need to be reordered.
select p.product_id,p.product_name,p.category,i.stock_quantity,i.reorder_level from products p join inventory i on p.product_id=i.product_id 
where stock_quantity <= reorder_level;

#Find the total inventory value for each category.
select p.category,sum(i.stock_quantity*p.unit_price) as total_inventory_value from products p join inventory i on p.product_id=i.product_id 
group by p.category;

#Find the product with the highest inventory value.
select p.product_id,p.product_name,p.category,i.stock_quantity * p.unit_price as highest_inv_value from products p join inventory i on 
p.product_id=i.product_id order by  highest_inv_value desc limit 1 ;

#Find the total number of units currently available in inventory for each category.
select p.category,sum(i.stock_quantity) as total_noof_units from products p join inventory i on p.product_id=i.product_id group by category;

#Find the products that are currently out of stock.
select p.product_id,p.product_name,p.category,i.stock_quantity from products p join inventory i on p.product_id=i.product_id where stock_quantity=0;

#Find products where the current stock is below the reorder level, and calculate their inventory value.
select p.product_id,p.product_name,p.category,i.stock_quantity,i.reorder_level,p.unit_price,(i.stock_quantity*p.unit_price) as inventory_value from products p join inventory i 
on p.product_id=i.product_id where i.stock_quantity < i.reorder_level;

#Find the category with the highest total inventory value.
select p.category,sum(i.stock_quantity*p.unit_price) as total_inventory_value from products p join inventory i on p.product_id=i.product_id 
group by category order by total_inventory_value desc limit 1;

#Business Analysis SQL
#Find the top 5 products by total revenue.
select p.product_id,p.product_name,p.category,sum(s.sales_amount) as total_revenue from products p join sales s on p.product_id=s.product_id
group by p.product_id,p.product_name,p.category order by total_revenue desc limit 5;

#Find the category that generated the highest total revenue.
select p.category,sum(sales_amount) as total_revenue from products p join sales s on p.product_id=s.product_id group by category order by total_revenue desc
limit 1;

#Find the top 3 suppliers based on the total revenue generated by their products.
select sp.supplier_id,sp.supplier_name,sum(s.sales_amount) as total_revenue from suppliers sp join products p on sp.supplier_id=p.supplier_id 
join sales s on p.product_id=s.product_id group by sp.supplier_id,sp.supplier_name order by total_revenue desc limit 3; 

#Find the products that have sold more than 100 total units.
select p.product_id,p.product_name,p.category,sum(s.quantity_sold) as total_quantity_sold from products p join sales s on 
p.product_id=s.product_id group by p.product_id,p.product_name,p.category having total_quantity_sold >100;

#Find the average sales amount for each product category
select p.category,avg(s.sales_amount) as avg_sales_amount from products p join sales s on p.product_id=s.product_id group by category;

#Find the month with the highest total revenue in 2025.
select monthname(sale_date),sum(sales_amount) as total_revenue from sales where year(sale_date)=2025 group by monthname(sale_date) order by total_revenue desc 
limit 1;

#Find the product with the highest total quantity sold in each category.
with ranked_products as(select p.product_id,p.product_name,p.category,sum(s.quantity_sold) as total_quantity,
rank() over(
partition by p.category order by sum(s.quantity_sold) desc) as quantity_rank from products p join sales s on p.product_id=s.product_id 
group by p.product_id,p.product_name,p.category)
select product_id,product_name,category,total_quantity from ranked_products where quantity_rank=1 ;

#Find the average order value (average sales_amount) for each month in 2025.
select monthname(sale_date) as month_Sales,avg(sales_amount) as avg_Sales from sales where year(sale_date)=2025 group by month_Sales;

#Find the top 3 products by total quantity sold.
select p.product_id,p.product_name,p.category,sum(s.quantity_sold) as total_quantity_sold from products p join sales s on p.product_id=s.product_id
group by p.product_id,p.product_name,p.category order by total_quantity_sold desc limit 3;

#Find products that are currently low in stock and have generated more than ₹50,000 in total revenue.
select p.product_id,p.product_name,p.category,i.stock_quantity,sum(s.sales_amount) as total_revenue from products p join inventory i 
on p.product_id=i.product_id
join sales s on p.product_id=s.product_id  
where i.stock_quantity < i.reorder_level group by p.product_id,p.product_name,p.category,i.stock_quantity
having total_revenue > 50000 ;