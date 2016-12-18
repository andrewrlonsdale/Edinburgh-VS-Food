DROP TABLE challenge;
DROP TABLE restaurant;


CREATE TABLE restaurant (
  id serial4 primary key,
  name varchar(255),
  location varchar(255),
  website TEXT,
  directions varchar(255),
  number varchar(255)  
);

CREATE TABLE challenge (
  id serial4 primary key,
  name varchar(255),
  restaurant_id INT8 references restaurant(id),
  info varchar(255),
  deal varchar(255),
  day varchar(255),
  food_type varchar(255)
);
