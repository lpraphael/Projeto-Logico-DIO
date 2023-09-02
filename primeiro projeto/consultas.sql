USE commerce;

SELECT * FROM clients
ORDER BY Fname DESC;

SELECT COUNT(*) FROM product
HAVING valor > 50 AND valor < 100;

SELECT count(idProduct)
FROM product;

SELECT * FROM orders
WHERE orderStatus = 'Cancelado';