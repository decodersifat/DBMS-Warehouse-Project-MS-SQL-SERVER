USE WAREHOUSE_MANAGEMENT;


--Find A Specific Product Name, Quantity,  WareHouse Name && Locations

SELECT w.name AS WareHouse_Name, p.name AS Product_Name, i.quantity AS Quantity , w.location AS Location
FROM Inventory i
JOIN Warehouses w ON i.warehouse_id = w.warehouse_id
JOIN Products p ON i.product_id = p.product_id
WHERE p.product_id = 1;

-- Deduct Product Quantity From a Specific WareHouse

UPDATE Inventory
SET quantity = quantity - 100, last_updated = GETDATE()
WHERE warehouse_id = 1 AND product_id = 1;


--Add Product Quantity to a specific WareHouse

UPDATE Inventory
SET quantity = quantity + 100, last_updated = GETDATE()
WHERE warehouse_id = 2 AND product_id = 1;



--Check stock availability of a specific product in a specific warehouse

SELECT quantity
FROM Inventory
WHERE warehouse_id = 1 AND product_id = 1;

--Deduct Quantity if Stock available

UPDATE Inventory
SET quantity = quantity - 50, last_updated = GETDATE()
WHERE warehouse_id = 1 AND product_id = 101;



--Stock Levels Report

SELECT w.name AS warehouse_name, p.name AS product_name, i.quantity
FROM Inventory i
JOIN Warehouses w ON i.warehouse_id = w.warehouse_id
JOIN Products p ON i.product_id = p.product_id;



--Product Transfer History

SELECT t.transfer_date, ws.name AS source_warehouse, wd.name AS destination_warehouse, t.transfer_quantity
FROM Transfers t
JOIN Warehouses ws ON t.source_warehouse_id = ws.warehouse_id
JOIN Warehouses wd ON t.destination_warehouse_id = wd.warehouse_id
WHERE t.product_id = 1;


--Order Fulfillment Report

SELECT o.order_id, p.name AS product_name, o.order_quantity, o.order_date, o.delivery_date, o.customer_name
FROM Orders o
JOIN Products p ON o.product_id = p.product_id
WHERE o.warehouse_id = 1;

--Find suppliers for a specific product
SELECT s.supplier_name, s.contact_info, p.name AS Product_Name
FROM Suppliers s
JOIN Supply_Orders so ON s.supplier_id = so.supplier_id
JOIN Products p ON so.product_id = p.product_id
WHERE p.product_id = 1;

--Find products supplied to a specific warehouse by a specific supplier
SELECT p.name AS Product_Name, w.name AS Warehouse_Name, so.supply_quantity, so.supply_date
FROM Supply_Orders so
JOIN Products p ON so.product_id = p.product_id
JOIN Warehouses w ON so.warehouse_id = w.warehouse_id
WHERE so.supplier_id = 1 AND so.warehouse_id = 1;


--Report products with low stock in any warehouse
SELECT p.name AS Product_Name, w.name AS Warehouse_Name, i.quantity
FROM Inventory i
JOIN Products p ON i.product_id = p.product_id
JOIN Warehouses w ON i.warehouse_id = w.warehouse_id
WHERE i.quantity < 100;

--Find top-selling products based on order quantity
SELECT p.name AS Product_Name, SUM(o.order_quantity) AS Total_Sold
FROM Orders o
JOIN Products p ON o.product_id = p.product_id
GROUP BY p.name
ORDER BY Total_Sold DESC;

--Find product transfer history between specific dates
SELECT t.transfer_date, ws.name AS Source_Warehouse, wd.name AS Destination_Warehouse, t.transfer_quantity, p.name AS Product_Name
FROM Transfers t
JOIN Warehouses ws ON t.source_warehouse_id = ws.warehouse_id
JOIN Warehouses wd ON t.destination_warehouse_id = wd.warehouse_id
JOIN Products p ON t.product_id = p.product_id
WHERE t.transfer_date BETWEEN '2024-09-01' AND '2024-09-30';


--Track order history for products supplied by each supplier
SELECT s.supplier_name, p.name AS Product_Name, so.supply_quantity, so.supply_date
FROM Supply_Orders so
JOIN Suppliers s ON so.supplier_id = s.supplier_id
JOIN Products p ON so.product_id = p.product_id
ORDER BY so.supply_date DESC;

--Summary report for each warehouse with total products and quantities
SELECT w.name AS Warehouse_Name, COUNT(i.product_id) AS Total_Products, SUM(i.quantity) AS Total_Quantity
FROM Inventory i
JOIN Warehouses w ON i.warehouse_id = w.warehouse_id
GROUP BY w.name;

--Calculate total value of products in each warehouse
SELECT w.name AS Warehouse_Name, SUM(i.quantity * p.price) AS Total_Inventory_Value
FROM Inventory i
JOIN Products p ON i.product_id = p.product_id
JOIN Warehouses w ON i.warehouse_id = w.warehouse_id
GROUP BY w.name;












