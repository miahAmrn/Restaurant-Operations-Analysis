USE restaurant_db;

-- View the menu_items table.
SELECT * FROM menu_items;

-- Find the number of items on the menu
SELECT COUNT(menu_item_id) as number_of_items 
FROM menu_items;

-- What are the least and most expensive items on the menu
SELECT * 
FROM menu_items
ORDER BY price;
SELECT * 
FROM menu_items
ORDER BY price DESC;

-- How many Italian dishes are on the menu
SELECT COUNT(*) Total_Italian_Dishes FROM menu_items
WHERE category = 'Italian';

-- What are the least and most expensive Italian dishes on the menu

SELECT * 
FROM menu_items
WHERE category = 'Italian'
ORDER BY price;

SELECT * FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC;

-- How many dishes are in each category
SELECT COUNT(menu_item_id) as Total, category
FROM menu_items
GROUP BY category; 

-- What is the Average Dish price within each category?
SELECT AVG(price) as AVG_Price , category
FROM menu_items
GROUP BY category; 
