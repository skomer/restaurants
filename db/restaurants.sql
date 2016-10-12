DROP TABLE IF EXISTS meals;
DROP TABLE IF EXISTS restaurants;

CREATE TABLE restaurants (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(255),
  cuisine VARCHAR(255)
);

CREATE TABLE meals (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  restaurant_id INT4 REFERENCES restaurants(id)
);