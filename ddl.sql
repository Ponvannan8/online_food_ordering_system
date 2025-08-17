-- Create Database
CREATE DATABASE FoodOrderSystem;
USE FoodOrderSystem;

-- Customer Table
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL,
    address TEXT NOT NULL
);

-- Restaurant Table
CREATE TABLE Restaurant (
    restaurant_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,
    contact_number VARCHAR(15) UNIQUE NOT NULL
);

-- FoodItem Table
CREATE TABLE FoodItem (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    restaurant_id INT NOT NULL,
    item_name VARCHAR(100) NOT NULL,
    price DECIMAL(8,2) NOT NULL,
    category VARCHAR(50) NOT NULL,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(restaurant_id)
);

-- DeliveryAgent Table
CREATE TABLE DeliveryAgent (
    agent_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL
);

-- Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    status VARCHAR(50) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

-- OrderDetails Table
CREATE TABLE OrderDetails (
    order_id INT NOT NULL,
    item_id INT NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (order_id, item_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (item_id) REFERENCES FoodItem(item_id)
);

-- Review Table
CREATE TABLE Review (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    restaurant_id INT NOT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comments TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(restaurant_id)
);

-- Offer Table
CREATE TABLE Offer (
    offer_id INT PRIMARY KEY AUTO_INCREMENT,
    restaurant_id INT NOT NULL,
    item_id INT,
    discount_percent DECIMAL(5,2) CHECK (discount_percent > 0),
    valid_till DATE NOT NULL,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(restaurant_id),
    FOREIGN KEY (item_id) REFERENCES FoodItem(item_id)
);



