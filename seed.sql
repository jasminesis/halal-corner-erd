INSERT INTO menu (name, tue_fri, sat_mon, ingredients_available, calories, selling_price, supplier_id) VALUES ('chicken rice', true, true, true, 700, 10, 1);
INSERT INTO menu (name, tue_fri, sat_mon, ingredients_available, calories, selling_price, supplier_id) VALUES ('prata', true, false, true, 300, 3, 1);
INSERT INTO customers (name, likes_prata, like_ayam) VALUES ('Calvin', true, true);
INSERT INTO suppliers (name) VALUES ('ABC Foods');
INSERT INTO supplier_pricing (supplier_id, menu_id, ingredient_price) VALUES (1, 1, 5);
INSERT INTO cart (customer_id, menu_id, fulfilled) VALUES (1, 1, true);
INSERT INTO cart (customer_id, menu_id, fulfilled) VALUES (1, 2, true);

-- We want to find out the profit for the month.
SELECT
   SUM (amount) AS total
FROM
   (SELECT cart.menu_id, menu.price)
WHERE
   customer_id = 2000;