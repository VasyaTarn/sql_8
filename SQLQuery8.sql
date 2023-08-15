--SELECT p.name, MIN(s.price)
--FROM Product p JOIN Sale s ON s.id_product = p.id
--GROUP BY p.name

--SELECT p.name
--FROM Product p JOIN Sale s ON s.id_product = p.id
--GROUP BY p.name
--HAVING AVG(s.price) > 50

--SELECT c.name AS 'категория', SUM(d.quantity) AS 'количество'
--FROM Product p JOIN Category c ON c.id = p.id_category
--JOIN Delivery d ON d.id_product = p.id
--GROUP BY c.name
--HAVING AVG(d.price) > 100

--SELECT p.name, SUM(s.price * s.quantity) AS 'сумма продаж'
--FROM Product p JOIN Category c ON p.id_category = c.id
--JOIN Sale s ON s.id_product = p.id
--WHERE c.name = 'Фрукты' OR c.name = 'Конфеты'
--GROUP BY p.name

--SELECT s.name, MIN(d.price)
--FROM Product p JOIN Delivery d ON p.id = d.id_product
--JOIN Suplier s ON s.id = d.id_suplier
--WHERE d.date_of_delivery > DATEADD(month, -2, GETDATE())
--GROUP BY s.name
--ORDER BY MIN(d.price) ASC

--SELECT pr.name, CONCAT(co.name, ', ', r.name, ', ', c.name, ', ', a.street) AS 'full adress', COUNT(p.name) AS 'количество товаров'
--FROM Product p JOIN Producer pr ON p.id_producer = pr.id
--JOIN Adress a ON a.id = pr.id_adress
--JOIN City c ON c.id = a.id_city
--JOIN Region r ON r.id = c.id_region
--JOIN Country co ON co.id = r.id_country
--JOIN Sale s ON s.id_product = p.id
--GROUP BY pr.name, p.name, CONCAT(co.name, ', ', r.name, ', ', c.name, ', ', a.street)
--HAVING SUM(s.price) > 500 AND SUM(s.price) < 2000

--SELECT TOP 1 c.name
--FROM Category c JOIN Product p ON p.id_category = c.id
--GROUP BY c.name
--ORDER BY SUM(p.quantity) ASC

--SELECT c.name, SUM(p.quantity)
--FROM Category c JOIN Product p ON p.id_category = c.id
--JOIN Delivery d ON d.id_product = p.id
--JOIN Suplier s ON s.id = d.id_suplier
--GROUP BY c.name, p.name, s.name
--HAVING SUM(d.price) > 400 AND (s.name = 'Повна чаша' OR s.name = 'Евротрейд' OR s.name = 'Казахтрейд')