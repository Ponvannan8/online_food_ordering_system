-- Insert Customers
INSERT INTO Customer (name, email, phone, address) VALUES
('Arjun Kumar', 'arjun@example.com', '9876543210', 'Chennai, TN'),
('Priya Sharma', 'priya@example.com', '9988776655', 'Mumbai, MH'),
('Ravi Verma', 'ravi@example.com', '9123456789', 'Delhi, DL'),
('Sneha Patel', 'sneha@example.com', '9011223344', 'Ahmedabad, GJ'),
('Vikram Singh', 'vikram@example.com', '9900112233', 'Bangalore, KA');

-- Insert Restaurants
INSERT INTO Restaurant (name, location, contact_number) VALUES
('Spice Hub', 'Chennai', '8800112233'),
('Pizza Palace', 'Mumbai', '8811223344'),
('Biryani Express', 'Delhi', '8822334455');

-- Insert Food Items
INSERT INTO FoodItem (restaurant_id, item_name, price, category) VALUES
(1, 'Paneer Butter Masala', 250.00, 'Main Course'),
(1, 'Butter Naan', 40.00, 'Bread'),
(2, 'Veg Pizza', 300.00, 'Pizza'),
(2, 'Cheese Garlic Bread', 150.00, 'Snacks'),
(3, 'Chicken Biryani', 350.00, 'Rice'),
(3, 'Mutton Biryani', 450.00, 'Rice'),
(1, 'Gulab Jamun', 80.00, 'Dessert'),
(2, 'Pasta Alfredo', 200.00, 'Pasta');

-- Insert Delivery Agents
INSERT INTO DeliveryAgent (name, phone) VALUES
('Ramesh', '9000011111'),
('Suresh', '9000022222'),
('Mahesh', '9000033333');

-- Insert Orders
INSERT INTO Orders (customer_id, order_date, total_amount, status) VALUES
(1, '2025-08-01', 540.00, 'Delivered'),
(2, '2025-08-02', 700.00, 'Delivered'),
(3, '2025-08-03', 400.00, 'Pending'),
(4, '2025-08-04', 1200.00, 'Delivered'),
(5, '2025-08-05', 300.00, 'Cancelled');

-- Insert Order Details
INSERT INTO OrderDetails VALUES
(1, 1, 2), (1, 2, 2),
(2, 3, 2), (2, 4, 1),
(3, 5, 1),
(4, 6, 2), (4, 7, 3),
(5, 8, 1);

-- Insert Reviews
INSERT INTO Review (customer_id, restaurant_id, rating, comments) VALUES
(1, 1, 5, 'Excellent food!'),
(2, 2, 4, 'Loved the pizza!'),
(3, 3, 3, 'Biryani was okay.');

-- Insert Offers
INSERT INTO Offer (restaurant_id, item_id, discount_percent, valid_till) VALUES
(1, 1, 10.00, '2025-08-20'),
(2, 3, 15.00, '2025-08-15');
