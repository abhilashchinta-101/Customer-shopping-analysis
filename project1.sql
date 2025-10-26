select * from customer;

--- shopping distribution according to gender
SELECT gender, COUNT(*) AS total_shoppers
FROM customer
GROUP BY gender;

--- distribution of products according to gender
SELECT gender, SUM(quantity) AS total_products_sold
FROM customer	
GROUP BY gender
ORDER BY total_products_sold DESC
LIMIT 1;

--- distribution of price according to gender
SELECT gender, 
       SUM(quantity * price) AS total_revenue
FROM customer
GROUP BY gender
ORDER BY total_revenue DESC
LIMIT 1;

----- distribution of purchase categories compared with gender
SELECT category, gender, COUNT(*) AS total_purchases
FROM customer
GROUP BY category, gender
ORDER BY category, total_purchases DESC;

---- distribution of purchase categories compared with age group
SELECT category, age, COUNT(*) AS total_purchases
FROM customer
GROUP BY category, age
ORDER BY category, total_purchases DESC;

----- shopping distribution by age
SELECT age, COUNT(*) AS total_purchases
FROM customer
GROUP BY age
ORDER BY total_purchases DESC;

----- distribution of quantity by age
SELECT age, SUM(quantity) AS total_products_sold
FROM customer
GROUP BY age
ORDER BY total_products_sold DESC
LIMIT 1;

---- distribution of revenue by age
SELECT age, SUM(price) AS total_price
FROM customer
GROUP BY age
ORDER BY total_price DESC
LIMIT 1;

--- payment method relates to gender
SELECT payment_method, gender, COUNT(*) AS total_purchases
FROM customer
GROUP BY payment_method, gender
ORDER BY payment_method, total_purchases DESC;

---- payment method relates to age group
SELECT payment_method, age, COUNT(*) AS total_purchases
FROM customer
GROUP BY payment_method, age
ORDER BY payment_method, total_purchases DESC;

---- payment method relates to category
SELECT payment_method, category, COUNT(*) AS total_purchases
FROM customer
GROUP BY payment_method, category
ORDER BY payment_method, total_purchases DESC;

--- distribution of payment method 
SELECT payment_method, COUNT(*) AS total_purchases
FROM customer
GROUP BY payment_method
ORDER BY total_purchases DESC;




