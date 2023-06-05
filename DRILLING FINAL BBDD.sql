Select * FROM  customer;

INSERT INTO customer (customer_id, store_id, first_name, last_name, email, address_id, activebool, create_date, last_update, active)
VALUES (600, 1, 'Camila', 'Banares', 'Camila.Banares@gmail.com', 1, true, '2023-06-04', now(), 1);

UPDATE customer
SET first_name = 'Daniela'
WHERE customer_id = 600;

DELETE FROM customer
WHERE customer_id = 600;

Select * FROM  staff;

INSERT INTO staff (staff_id, first_name, last_name, address_id, email, store_id, active, username, password, last_update, picture)
VALUES (3, 'Tomas', 'Salgado', 1, 'tomas.salgado@gmail.com', 1, true, 'Tomichin', 'password', now(), NULL);

UPDATE staff
SET first_name = 'Angel'
WHERE staff_id = 3;

DELETE FROM staff
WHERE staff_id = 3;

Select * FROM  actor;


INSERT INTO actor (actor_id, first_name, last_name, last_update)
VALUES (202, 'Tom', 'Hanks', now());

UPDATE actor
SET first_name = 'Tommy'
WHERE actor_id = 202;

DELETE FROM actor
WHERE actor_id = 202;


SELECT * from  rental

--datos de la tabla "rental" y "customer"
SELECT *
FROM rental r
JOIN customer c ON r.customer_id = c.customer_id
-- Filtra por el año 2005 y el mes junio 6
WHERE EXTRACT(YEAR FROM r.rental_date) = 2005
    AND EXTRACT(MONTH FROM r.rental_date) = 6;

--Listar número, fecha (payment_date) y total (amount) de todas las "payment":
SELECT payment_id, payment_date, amount
FROM payment;


--Listar todas las "film" del año 2006 que contengan un "rental_rate" mayor a 4.0:

SELECT *
FROM film
-- Filtra por el año 2006 y un "rental_rate" mayor a 4.0
WHERE release_year = 2006
    AND rental_rate > 4.0;