create database WAREHOUSE_MANAGEMENT;
USE WAREHOUSE_MANAGEMENT;


CREATE TABLE Warehouses (
    warehouse_id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100)
);



CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

CREATE TABLE Inventory (
    inventory_id INT PRIMARY KEY,
    warehouse_id INT,
    product_id INT,
    quantity INT,
    last_updated DATE,
    FOREIGN KEY (warehouse_id) REFERENCES Warehouses(warehouse_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);



CREATE TABLE Transfers (
    transfer_id INT PRIMARY KEY,
    source_warehouse_id INT,
    destination_warehouse_id INT,
    product_id INT,
    transfer_quantity INT,
    transfer_date DATE,
    FOREIGN KEY (source_warehouse_id) REFERENCES Warehouses(warehouse_id),
    FOREIGN KEY (destination_warehouse_id) REFERENCES Warehouses(warehouse_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);





CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100),
    contact_info VARCHAR(100)
);


CREATE TABLE Supply_Orders (
    supply_order_id INT PRIMARY KEY,
    supplier_id INT,
    product_id INT,
    warehouse_id INT,
    supply_quantity INT,
    supply_date DATE,
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (warehouse_id) REFERENCES Warehouses(warehouse_id)
);



CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    product_id INT,
    warehouse_id INT,
    order_quantity INT,
    order_date DATE,
    delivery_date DATE,
    customer_name VARCHAR(100),
    customer_contact VARCHAR(100),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (warehouse_id) REFERENCES Warehouses(warehouse_id)
);



