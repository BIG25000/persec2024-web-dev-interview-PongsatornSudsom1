SELECT p.product_name, SUM(od.quantity) AS total_quantity
FROM products p
JOIN order_details od ON p.product_id = od.product_id
JOIN orders o ON od.order_id = o.order_id
WHERE strftime('%Y', o.order_date) = '2016'
GROUP BY p.product_name
ORDER BY total_quantity DESC
LIMIT 5;
