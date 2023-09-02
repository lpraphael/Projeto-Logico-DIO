USE oficina;

SELECT * FROM clients
ORDER BY full_name DESC;

SELECT COUNT(*) FROM product
HAVING price > 50 AND price < 100;

SELECT count(id_service)
FROM Services;

SELECT * FROM orders
WHERE order_status = 'Cancelado';