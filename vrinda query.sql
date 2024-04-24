 use vrinda;
 select * from vrinda;
-- COMPARE SALES AND ORDERS ?
select date,sum(amount) as total_sales, COUNT(order_id) as total_orders from vrinda group by date;
-- WHICH MONTH GOT THE HIGHEST SALES AND ORDERS ?
select (date) as date,sum(amount) as total_sales, count(order_id) as total_orders from vrinda group by date
order by total_sales desc,total_orders desc;
--WHO PURCHASED MORE MEN OR WOMEN IN 2022 ?
select Gender,sum(Amount) as Amount from vrinda group by gender order by amount desc;
--WHAT ARE THE DIFFERENT ORDERS STATUS ?
select status,count(order_id) as orders from vrinda group by status;
-- LIST THE TOP 10 STATES CONTRIBUTING TO THE SALES ?
select top 10 ship_state,sum(amount) as amount from vrinda group by ship_state order by amount desc;
--RELATION BETWEEN AGE AND GENDER BY SALES AND ORDERS ?
select count(gender) as gender_count,age,sum(amount)as sales_amount from vrinda group by age order by sales_amount desc;
-- WHICH CHANNEL IS CONTRIBUTING MAXIMUM SALES ?
select channel,sum(amount) as total_sales from vrinda group by Channel order by total_sales desc;
-- HIGHEST SELLING CATEGORY ?
select category,sum(amount) as amount from vrinda group by category order by amount desc; 

