WITH sales_2016 AS (
    SELECT p.product_name, SUM(od.quantity) AS total_quantity
    FROM products p
    JOIN order_details od ON p.product_id = od.product_id
    JOIN orders o ON od.order_id = o.order_id
    WHERE strftime('%Y', o.order_date) = '2016'
    GROUP BY p.product_name
    ORDER BY total_quantity DESC
    LIMIT 5
),
sales_2017 AS (
    SELECT p.product_name, SUM(od.quantity) AS total_quantity
    FROM products p
    JOIN order_details od ON p.product_id = od.product_id
    JOIN orders o ON od.order_id = o.order_id
    WHERE strftime('%Y', o.order_date) = '2017'
    GROUP BY p.product_name
    ORDER BY total_quantity DESC
    LIMIT 5
)
SELECT s16.product_name, s17.product_name
FROM sales_2016 s16
JOIN sales_2017 s17 ON s16.product_name = s17.product_name;
