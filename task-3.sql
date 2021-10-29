SELECT 
    product_name, 
    ROUND (SUM ((order_details.unit_price * order_details.quantity)-(order_details.unit_price * order_details.quantity* order_details.discount))) AS sum
FROM
order_details
LEFT JOIN
products
ON order_details.product_id = products.product_id
GROUP BY product_name 
order by sum limit 10;