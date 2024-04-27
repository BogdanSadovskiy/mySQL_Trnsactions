-- start transaction;

-- UPDATE profiles SET money = money - 100 
-- WHERE user_id = 1;
-- UPDATE profiles SET money = money + 100 
-- WHERE user_id = 2;
-- commit;

-- start transaction;
-- INSERT INTO orders (user_id, total_price, order_date, status) VALUES
-- (3, 500.00, NOW(), 'pending');
-- commit;

-- SELECT u.name
-- FROM users AS u
-- WHERE u.id IN (
--     SELECT o.user_id
--     FROM orders AS o
--     GROUP BY o.user_id
--     HAVING COUNT(o.user_id) >= 2
-- );



SELECT u.name, SUM(o.total_price) AS total_spent
FROM users AS u 
JOIN orders AS o ON o.user_id = u.id 
GROUP BY u.name
HAVING SUM(o.total_price) > 100;












