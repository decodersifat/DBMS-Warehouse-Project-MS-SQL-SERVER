USE WAREHOUSE_MANAGEMENT;

INSERT INTO Warehouses (warehouse_id, name, location) VALUES
(1, 'Warehouse Kawla', 'Kawla Airport'),
(2, 'Warehouse Airport', 'Dhaka Airport'),
(3, 'Warehouse Narayanganj', 'Narayanganj'),
(4, 'Warehouse Fatulla', 'Dhaka Fatulla'),
(5, 'Warehouse Uttara', 'Uttara');


INSERT INTO Products (product_id, name, category, price) VALUES
(1, 'Samsung Galaxy S23', 'Electronics', 999.99),
(2, 'Apple iPhone 14', 'Electronics', 1099.99),
(3, 'Sony WH-1000XM4 Headphones', 'Electronics', 348.00),
(4, 'Instant Pot Duo 7-in-1', 'Home Appliances', 89.99),
(5, 'Dyson V11 Torque Drive', 'Home Appliances', 599.99),
(6, 'IKEA Malm Bed Frame', 'Furniture', 399.00),
(7, 'West Elm Sofa', 'Furniture', 1299.99),
(8, 'Nike Air Max 270', 'Footwear', 149.99),
(9, 'Adidas Ultraboost 21', 'Footwear', 179.99),
(10, 'The North Face Backpack', 'Sports', 89.99),
(11, 'Wilson Tennis Racket', 'Sports', 129.99),
(12, 'Levi’s 501 Jeans', 'Clothing', 59.99),
(13, 'H&M Basic T-Shirt', 'Clothing', 14.99),
(14, 'Lego Star Wars Millennium Falcon', 'Toys', 169.99),
(15, 'Barbie Dreamhouse', 'Toys', 199.99),
(16, 'Nivea Moisturizing Cream', 'Beauty', 12.99),
(17, 'Maybelline Mascara', 'Beauty', 9.99),
(18, 'Becoming by Michelle Obama', 'Books', 24.99),
(19, 'The Silent Patient by Alex Michaelides', 'Books', 16.99),
(20, 'Moleskine Classic Notebook', 'Stationery', 19.99);


INSERT INTO Inventory (inventory_id, warehouse_id, product_id, quantity, last_updated) VALUES
(1, 1, 1, 500, '2024-09-01'),
(2, 1, 2, 300, '2024-09-02'),
(3, 1, 3, 250, '2024-09-03'),
(4, 1, 4, 600, '2024-09-04'),
(5, 1, 5, 700, '2024-09-05'),
(6, 1, 6, 150, '2024-09-06'), 
(7, 1, 7, 400, '2024-09-07'), 
(8, 2, 1, 800, '2024-09-08'), 
(9, 2, 2, 900, '2024-09-09'),  
(10, 2, 3, 300, '2024-09-10'), 
(11, 2, 4, 350, '2024-09-11'), 
(12, 2, 5, 200, '2024-09-12'),  
(13, 2, 6, 650, '2024-09-13'),  
(14, 2, 7, 500, '2024-09-14'),  
(15, 3, 1, 450, '2024-09-15'), 
(16, 3, 2, 550, '2024-09-16'),
(17, 3, 3, 600, '2024-09-17'),
(18, 3, 4, 250, '2024-09-18'), 
(19, 3, 5, 750, '2024-09-19'), 
(20, 3, 6, 350, '2024-09-20'),
(21, 3, 7, 800, '2024-09-21'),
(22, 4, 1, 300, '2024-09-22'),
(23, 4, 2, 200, '2024-09-23'), 
(24, 4, 3, 150, '2024-09-24'),  
(26, 4, 5, 500, '2024-09-26'),
(27, 4, 6, 600, '2024-09-27'), 
(28, 4, 7, 700, '2024-09-28'),  
(29, 5, 1, 850, '2024-09-29'),  
(30, 5, 2, 950, '2024-09-30'),
(31, 5, 3, 800, '2024-10-01'),  
(32, 5, 4, 450, '2024-10-02'), 
(33, 5, 5, 500, '2024-10-03'), 
(34, 5, 6, 200, '2024-10-04'), 
(35, 5, 7, 600, '2024-10-05');


INSERT INTO Suppliers (supplier_id, supplier_name, contact_info) VALUES
(1, 'Samsung Electronics', 'samsung@example.com'),
(2, 'Apple Inc.', 'apple@example.com'),
(3, 'Sony Corp', 'sony@example.com'),
(4, 'Dyson Ltd', 'dyson@example.com'),
(5, 'Nike Inc.', 'nike@example.com'),
(6, 'Adidas AG', 'adidas@example.com'),
(7, 'H&M Group', 'hm@example.com'),
(8, 'Lego Group', 'lego@example.com'),
(9, 'Maybelline', 'maybelline@example.com');


INSERT INTO Supply_Orders (supply_order_id, supplier_id, product_id, warehouse_id, supply_quantity, supply_date) VALUES
(1, 1, 1, 1, 500, '2024-08-30'),
(2, 2, 2, 2, 900, '2024-08-31'),
(3, 3, 3, 3, 600, '2024-09-01'),
(4, 4, 5, 4, 500, '2024-09-02'),
(5, 5, 8, 5, 600, '2024-09-03'),
(6, 6, 9, 2, 750, '2024-09-04'),
(7, 9, 17, 1, 350, '2024-09-05');

INSERT INTO Transfers (transfer_id, source_warehouse_id, destination_warehouse_id, product_id, transfer_quantity, transfer_date) VALUES
(1, 1, 2, 1, 100, '2024-09-15'),
(2, 2, 3, 2, 150, '2024-09-16'),
(3, 3, 4, 3, 200, '2024-09-17'),
(4, 4, 5, 4, 250, '2024-09-18'),
(5, 5, 1, 5, 300, '2024-09-19');

INSERT INTO Orders (order_id, product_id, warehouse_id, order_quantity, order_date, delivery_date, customer_name, customer_contact) VALUES
(1, 1, 1, 50, '2024-09-20', '2024-09-25', 'Alice Johnson', 'alice@example.com'),
(2, 2, 2, 100, '2024-09-21', '2024-09-26', 'Bob Smith', 'bob@example.com'),
(3, 3, 3, 150, '2024-09-22', '2024-09-27', 'Charlie Brown', 'charlie@example.com'),
(4, 4, 4, 200, '2024-09-23', '2024-09-28', 'David Green', 'david@example.com'),
(5, 5, 5, 250, '2024-09-24', '2024-09-29', 'Eva White', 'eva@example.com');
