-- View the order_details table.
SELECT * FROM order_details;

-- What is the date range of the table?
SELECT MIN(order_date), MAX(order_date) 
FROM order_details;

-- How many orders were made within this date range?
SELECT COUNT(DISTINCT order_id)
FROM order_details;

-- How many items were ordered within this date range?
SELECT COUNT(*) as All_Order FROM order_details;

-- Which orders had the most number of items?
SELECT order_id, COUNT(item_id) as Num_Items
FROM order_details
GROUP BY order_id
ORDER BY Num_Items DESC;

-- How many orders had more that 12 items?
SELECT COUNT(*) Total_orders FROM 
(SELECT order_id, COUNT(item_id) as Num_Items
FROM order_details
GROUP BY order_id
HAVING Num_Items > 12) as num_orders;





