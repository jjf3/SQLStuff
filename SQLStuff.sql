#Created by jjf3

#SQL Query that finds the total sales amount for each product category, along with the corresponding category name

SELECT c.category_name, SUM(s.amount) AS total_sales_amount
FROM products p
JOIN sales s ON p.product_id = s.product_id
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name;
