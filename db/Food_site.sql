DROP TABLE restaurant;
DROP TABLE challenge;

CREATE TABLE challenge (
  id serial4 primary key,
  name varchar(255),
  info varchar(255),
  deal varchar(255),
  day varchar(255),
  food_type varchar(255)
);

CREATE TABLE restaurant (
  id serial4 primary key,
  name varchar(255),
  location varchar(255),
  website TEXT,
  directions varchar(255),
  number varchar(255)  
);