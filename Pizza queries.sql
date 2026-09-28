USE [Pizza DB]
SELECT * from pizza_sales

Select sum(total_price) AS 'Total Revenue'from pizza_sales

SELECT SUM(total_price)/COUNT(DISTINCT(order_id)) AS 'AVERAGE ORDER VALUE' FROM pizza_sales

SELECT SUM(quantity) AS'TOTAL QUANTITY OF PIZZA' from pizza_sales

select count(distinct order_id) as 'total orders' from pizza_sales

SELECT cast (cast (SUM(quantity) as decimal (10,2)) / cast (count(distinct order_id)as decimal(10,2)) as decimal (10,2))
as 'average pizza per order' from pizza_sales


SELECT DATENAME(DW, order_id), COUNT(DISTINCT order_id) AS 'TOTAL ORDERS BY DAYS'
FROM pizza_sales
GROUP BY DATENAME(DW, order_id)

SELECT DATENAME (MONTH, order_date) AS 'MONTH NAME', COUNT(DISTINCT order_id) AS 'TOTAL ORDERS' FROM pizza_sales
GROUP BY DATENAME (MONTH, order_date) 
ORDER BY 'TOTAL ORDERS'

SELECT pizza_size, SUM(total_price)AS 'TOTAL SALES', SUM(total_price)*100/(SELECT SUM(total_price) FROM pizza_sales) AS 'PERCENTAGE'
FROM pizza_sales
GROUP BY pizza_size


