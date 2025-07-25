-- customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(100)
);

-- products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(100),
    price DECIMAL(10,2),
    stock_qty INT
);

-- orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- order_items table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

-- employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    role VARCHAR(100),
    salary DECIMAL(10,2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
