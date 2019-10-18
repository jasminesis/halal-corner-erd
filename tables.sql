CREATE TABLE IF NOT EXISTS menu (
    id SERIAL PRIMARY KEY,
    name TEXT,
    tue_fri BOOLEAN,
    sat_mon BOOLEAN,
    ingredients_available BOOLEAN,
    calories INTEGER,
    selling_price INTEGER,
    supplier_id INTEGER
);
CREATE TABLE IF NOT EXISTS cart (
    id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    menu_id INTEGER,
    fulfilled BOOLEAN
);
CREATE TABLE IF NOT EXISTS customers (
    id SERIAL PRIMARY KEY,
    name TEXT,
    likes_prata BOOLEAN,
    like_ayam BOOLEAN
);
CREATE TABLE IF NOT EXISTS suppliers (
    id SERIAL PRIMARY KEY,
    name TEXT
);
CREATE TABLE IF NOT EXISTS supplier_pricing (
    id SERIAL PRIMARY KEY,
    supplier_id INTEGER,
    menu_id INTEGER,
    ingredient_price INTEGER
);