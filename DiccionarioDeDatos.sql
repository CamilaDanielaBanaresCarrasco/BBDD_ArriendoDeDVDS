Tabla: actor

actor:
actor_id: integer (No nulo)
first_name: character varying(45) (No nulo)
last_name: character varying(45) (No nulo)
last_update: timestamp without time zone (No nulo)


Tabla: address
address_id: integer (No nulo)
address: character varying(50) (No nulo)
address2: character varying(50)
district: character varying(20) (No nulo)
city_id: smallint (No nulo)
postal_code: character varying(10)
phone: character varying(20) (No nulo)
last_update: timestamp without time zone (No nulo)

Tabla: category
category:
category_id: integer (No nulo)
name: character varying(25) (No nulo)
last_update: timestamp without time zone (No nulo)

Tabla: city
city_id: integer (No nulo)
city: character varying(50) (No nulo)
country_id: smallint (No nulo)
last_update: timestamp without time zone (No nulo)

Tabla: country
country_id: integer (No nulo)
country: character varying(50) (No nulo)
last_update: timestamp without time zone (No nulo)

Tabla: customer
customer_id: integer (No nulo)
store_id: smallint (No nulo)
first_name: character varying(45) (No nulo)
last_name: character varying(45) (No nulo)
email: character varying(50)
address_id: smallint (No nulo)
activebool: boolean (No nulo)
create_date: date (No nulo)
last_update: timestamp without time zone (No nulo)
active: integer

Tabla: film
film_id: integer (No nulo)
title: character varying(255) (No nulo)
description: text
release_year: year
language_id: smallint (No nulo)
rental_duration: smallint (No nulo)
rental_rate: numeric(4, 2) (No nulo)
length: smallint
replacement_cost: numeric(5, 2) (No nulo)
rating: mpaa_rating
last_update: timestamp without time zone (No nulo)
special_features: text[]
fulltext: tsvector (No nulo)

Tabla: film_actor
actor_id: smallint (No nulo)
film_id: smallint (No nulo)
last_update: timestamp without time zone (No nulo)

Tabla: film_category
film_id: smallint (No nulo)
category_id: smallint (No nulo)
last_update: timestamp without time zone (No nulo)

Tabla: inventory
inventory_id: integer (No nulo)
film_id: smallint (No nulo)
store_id: smallint (No nulo)
last_update: timestamp without time zone (No nulo)

Tabla: language
language_id: integer (No nulo)
name: character(20) (No nulo)
last_update: timestamp without time zone (No nulo)

Tabla: payment
payment_id: integer (No nulo)
customer_id: smallint (No nulo)
staff_id: smallint (No nulo)
rental_id: integer (No nulo)
amount: numeric(5, 2) (No nulo)
payment_date: timestamp without time zone (No nulo)

Tabla: rental
rental_id: integer (No nulo)
rental_date: timestamp without time zone (No nulo)
inventory_id: integer (No nulo)
customer_id: smallint (No nulo)
return_date: timestamp without time zone
staff_id: smallint (No nulo)
last_update: timestamp without time zone (No nulo)

Tabla: staff
staff_id: integer (No nulo)
first_name: character varying(45) (No nulo)
last_name: character varying(45) (No nulo)
address_id: smallint (No nulo)
email: character varying(50)
store_id: smallint (No nulo)
active: boolean (No nulo)
username: character varying(16) (No nulo)
password: character varying(40)
last_update: timestamp without time zone (No nulo)
picture: bytea

Tabla: store
store_id: integer (No nulo)
manager_staff_id: smallint (No nulo)
address_id: smallint (No nulo)
last_update: timestamp without time zone (No nulo)