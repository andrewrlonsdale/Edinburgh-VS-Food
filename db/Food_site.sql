DROP TABLE restaurant;
DROP TABLE challenge;

CREATE TABLE challenge (
  id serial4 primary key,
  name varchar(255),
  info varchar(255),
  deal varchar(255),
  day varchar(2255),
  food_type varchar(255)
);

CREATE TABLE restaurant (
  id serial4 primary key,
  name varchar(255),
  location varchar,
  website url,
  directions varchar(255),
  number int4  
);