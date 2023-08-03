## Task to be performed:

## Q1. Write a query to create a database named SQL basics.
create database if not exists SQL_Lesson_5_Project;

## Q2. Write a query to select the database SQL basics.
use SQL_Lesson_5_Project;

## Q3. Write a query to create a product table with fields as product code, product name, price, stock and category, customer table with the fields as customer id, customer name, customer location, and customer phone number and, 
##     sales table with the fields as date, order number, product code, product name, quantity, and price.
desc product_datasets;
select * from customer_datasets;
select * from product_datasets;
select * from sales_datasets;

create table product (
	product_code int not null,
	product_name varchar(50),
    price int,
    stock int,
    category varchar(50) 
);

create table customer (
	customer_id int not null Primary Key,
	customer_name varchar(50),
    customer_location varchar(50),
    customer_phone_number int,
    category varchar(50)
);

create table sales (
	order_date datetime not null,
	order_number varchar(20),
    product_code int,
	product_name varchar(20),
    quantity int,
    price int 
);

## Q4. Write a query to insert values into the tables.
insert into customer_datasets value (1111, Nisha, Kerala, 8392320) ;                   ## In SQL

## Q5. Write a query to add two new columns such as S_no and categories to the sales table.
alter table sales_datasets add column S_no int , add column categories varchar(50);

## Q6. Write a query to change the column type of stock in the product table to varchar.
alter table product_datasets modify stock varchar(50);

## Q7. Write a query to change the table name from customer-to-customer details.
alter table customer_datasets rename to customer_to_customer; 

## Q8. Write a query to drop the columns S_no and categories from the sales table.
alter table sales_datasets drop column S_no , drop column categories;

## Q9. Write a query to display order id, customer id, order date, price, and quantity from the sales table.
select order_id, customer_id, order_date, price, quantity from sales_datasets;

## Q10. Write a query to display all the details in the product table if the category is stationary.
select * from product_datasets 
where category = Stationary;

## Q11. Write a query to display a unique category from the product table.
select distinct category from product_datasets;

## Q12. Write a query to display the sales details if quantity is greater than 2 and price is lesser than 500 from the sales table.
select * from sales_datasets 
where qty > 2 and price < 500;

## Q13. Write a query to display the customer’s name if the name ends with a.
select c_name from customer_datasets
where c_name LIKE '%a';

## Q14. Write a query to display the product details in descending order of the price.
select * from product_datasets
order by price desc;

## Q15. Write a query to display the product code and category from similar categories that are greater than or equal to 2.
select p_code, category, count(category) as similar_categories from product_datasets
group by category 
having similar_categories >= 2;

## Q16. Write a query to display the order number and the customer name to combine the results of the order and the customer tables including duplicate rows.


