CREATE TABLE shops (
  id SERIAL PRIMARY KEY,
  store_name VARCHAR(255),
  owner_email VARCHAR(255)
);

CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  shop_id INTEGER REFERENCES shops(id), -- Connects product to a store
  name VARCHAR(255),
  price DECIMAL(10, 2),
  inventory INTEGER
);