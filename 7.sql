SELECT strftime('%Y', o.order_date) year,
       SUM((p.unit_price * od.quantity) * (1 - od.discount)) total_sales
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
join products p on od.product_id = p.product_id
WHERE o.ship_region = 'Western Europe'
GROUP BY year;