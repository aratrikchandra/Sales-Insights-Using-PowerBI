#Show all customer records
SELECT * FROM sales.customers; 

#Show total number of customers
SELECT count(*) FROM customers;

#Show transactions for Mumbai market (market code for mumbai is Mark002
SELECT * FROM transactions where market_code='Mark002';

#Show distrinct product codes that were sold in Mumbai
SELECT distinct product_code FROM transactions where market_code='Mark002'; 

#Show transactions where currency is US dollars
SELECT * from transactions where currency="USD";

#Show transactions in 2020 join by date table
SELECT transactions.*, date.* FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020;

#Show total revenue in year 2020
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.currency="INR\r";

#Show total revenue in year 2020, January Month,
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and date.month_name="January" and transactions.currency="INR\r";

#Show total revenue in year 2020 in Mumbai
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.market_code="Mark002";
