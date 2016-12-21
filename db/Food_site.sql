DROP TABLE challenge;
DROP TABLE restaurant;


CREATE TABLE restaurant (
  id serial4 primary key,
  name TEXT,
  location TEXT,
  website TEXT,
  directions TEXT,
  number TEXT
);

CREATE TABLE challenge (
  id serial4 primary key,
  name TEXT,
  restaurant_id INT8 references restaurant(id) On DELETE CASCADE,
  info TEXT,
  deal TEXT,
  day TEXT,
  food_type TEXT,
  picture TEXT
);
