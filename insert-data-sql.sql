-- customers
INSERT INTO customers VALUES
(1, 'Dinesh', 'dinesh@mail.com', 'Chennai'),
(2, 'Kavya', 'kavya@mail.com', 'Mumbai'),
(3, 'Arjun', 'arjun@mail.com', 'Delhi'),
(4, 'Sneha', 'sneha@mail.com', 'Bangalore'),
(5, 'Ravi', 'ravi@mail.com', 'Hyderabad');

-- products
INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 55000.00, 15),
(2, 'Smartphone', 'Electronics', 25000.00, 30),
(3, 'Washing Machine', 'Home Appliances', 18000.00, 10),
(4, 'Microwave Oven', 'Home Appliances', 8000.00, 5),
(5, 'Book: SQL Mastery', 'Books', 500.00, 100);

-- orders
INSERT INTO orders VALUES
(101, 1, '2025-06-01'),
(102, 2, '2025-06-02'),
(103, 1, '2025-06-10'),
(104, 4, '2025-05-28'),
(105, 5, '2025-04-15');

-- order_items
INSERT INTO order_items VALUES
(1, 101, 1, 1),
(2, 101, 5, 2),
(3, 102, 2, 1),
(4, 103, 3, 1),
(5, 104, 5, 5),
(6, 105, 4, 1);

-- departments
INSERT INTO departments VALUES
(1, 'Sales'),
(2, 'HR'),
(3, 'IT'),
(4, 'Logistics');

-- employees
INSERT INTO employees VALUES
(201, 'Rakesh', 'Manager', 70000.00, 1),
(202, 'Preeti', 'HR Executive', 50000.00, 2),
(203, 'Amit', 'Software Engineer', 60000.00, 3),
(204, 'Sara', 'Support', 40000.00, 4),
(205, 'Anil', 'Sales Executive', 45000.00, 1);
