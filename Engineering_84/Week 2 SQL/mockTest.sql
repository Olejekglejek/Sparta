SELECT DISTINCT c.customer_id
FROM customer c
INNER JOIN PURCHASE_ORDER po ON c.customer_id = po.customer_id
INNER JOIN ORDER_PRODUCT op ON po.order_id = op.order_id
INNER JOIN PRODUCT p ON p.product_id = op.product_id
INNER JOIN PRODUCT_CATEGORY pc ON pc.product_category_id = p.product_category_id
WHERE pc.name = 'Books' OR pc.name='Garden'
--WHERE pc.name IN ('Books', 'Garden')
ORDER BY c.customer_id ASC
