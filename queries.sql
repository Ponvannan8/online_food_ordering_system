-- 1. Display all customers
SELECT * FROM Customer;

-- 2. List all food items with their restaurant names
SELECT f.item_name, f.price, r.name AS restaurant_name
FROM FoodItem f
JOIN Restaurant r ON f.restaurant_id = r.restaurant_id;

-- 3. Show all orders placed by a specific customer (e.g., customer_id = 1)
SELECT * FROM Orders
WHERE customer_id = 1;

-- 4. Total number of food items in each restaurant
SELECT r.name, COUNT(f.item_id) AS total_items
FROM Restaurant r
JOIN FoodItem f ON r.restaurant_id = f.restaurant_id
GROUP BY r.name;

-- 5. Orders with total amount > ₹500
SELECT * FROM Orders
WHERE total_amount > 500;

-- 6. Delivery agents who delivered more than 3 orders
-- (Assuming an extra mapping table OrderDelivery(order_id, agent_id) is needed in real scenario)

-- 7. All reviews for a particular restaurant (e.g., restaurant_id = 1)
SELECT c.name AS customer_name, r.rating, r.comments
FROM Review r
JOIN Customer c ON r.customer_id = c.customer_id
WHERE r.restaurant_id = 1;

-- 8. Most expensive food item and its restaurant
SELECT f.item_name, f.price, r.name AS restaurant_name
FROM FoodItem f
JOIN Restaurant r ON f.restaurant_id = r.restaurant_id
WHERE f.price = (SELECT MAX(price) FROM FoodItem);

-- 9. All offers valid today
SELECT * FROM Offer
WHERE valid_till >= CURDATE();

-- 10. Total revenue generated from all orders
SELECT SUM(total_amount) AS total_revenue
FROM Orders
WHERE status = 'Delivered';
