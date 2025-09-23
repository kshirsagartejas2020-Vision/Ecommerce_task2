USE EcommerceDB;
GO

------------------------------------------------------------
-- 1. INSERT SAMPLE DATA
------------------------------------------------------------

-- Insert Customers (with and without some optional fields)
INSERT INTO Customers (first_name, last_name, email, phone, city, state, postal_code)
VALUES 
('Rahul', 'Sharma', 'rahul.sharma@example.com', '9876543210', 'Mumbai', 'MH', '400001'),
('Sneha', 'Patel', 'sneha.patel@example.com', NULL, 'Ahmedabad', 'GJ', '380001'),
('Amit', 'Verma', 'amit.verma@example.com', '9123456789', 'Delhi', 'DL', NULL);

-- Insert Categories
INSERT INTO Categories (category_name, description)
VALUES 
('Electronics', 'Devices and gadgets'),
('Clothing', 'Men and Women apparel'),
('Books', 'Educational and Fictional books');

-- Insert Products (demonstrates DEFAULT stock_quantity and NULL description)
INSERT INTO Products (product_name, price, stock_quantity, category_id)
VALUES 
('Smartphone', 20000.00, 50, 1),
('Laptop', 55000.00, 20, 1),
('T-Shirt', 500.00, DEFAULT, 2),
('Novel', 300.00, 100, 3);

-- Insert Orders
INSERT INTO Orders (customer_id, status, total_amount)
VALUES 
(1, 'Pending', 20500.00),
(2, 'Shipped', 55000.00);

-- Insert Order Items
INSERT INTO OrderItems (order_id, product_id, quantity, price)
VALUES 
(1, 1, 1, 20000.00), -- Smartphone
(1, 3, 1, 500.00),   -- T-shirt
(2, 2, 1, 55000.00); -- Laptop

-- Insert Payments
INSERT INTO Payments (order_id, amount, method)
VALUES 
(1, 20500.00, 'UPI'),
(2, 55000.00, 'Credit Card');

-- Insert Shipping
INSERT INTO Shipping (order_id, shipping_address, city, state, postal_code, status)
VALUES 
(1, '123 MG Road', 'Mumbai', 'MH', '400001', 'In Transit'),
(2, '45 Ring Road', 'Ahmedabad', 'GJ', '380001', 'Delivered');

-- Insert Reviews
INSERT INTO Reviews (product_id, customer_id, rating, review_text)
VALUES
(1, 1, 5, 'Excellent product!'),
(2, 2, 4, 'Good laptop but battery life could be better');

-- Insert Users (Admin/Staff)
INSERT INTO Users (username, password_hash, role)
VALUES
('admin1', 'hashed_password_123', 'Admin'),
('staff1', 'hashed_password_456', 'Staff');

------------------------------------------------------------
-- 2. UPDATE DATA
------------------------------------------------------------

-- Update product stock after order (reduce quantity)
UPDATE Products
SET stock_quantity = stock_quantity - 1
WHERE product_id = 1; -- Smartphone purchased

-- Update order status
UPDATE Orders
SET status = 'Delivered'
WHERE order_id = 1;

-- Update customer phone (was NULL)
UPDATE Customers
SET phone = '9988776655'
WHERE customer_id = 2;

------------------------------------------------------------
-- 3. DELETE DATA
------------------------------------------------------------

-- Delete a review (customer changed mind)
DELETE FROM Reviews
WHERE review_id = 2;

-- Delete an order (and cascade order items + payments)
DELETE FROM Orders
WHERE order_id = 2;

------------------------------------------------------------
-- 4. CHECK DATA
------------------------------------------------------------

-- Verify inserted data
SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM OrderItems;
SELECT * FROM Payments;
SELECT * FROM Shipping;
SELECT * FROM Reviews;
SELECT * FROM Users;
