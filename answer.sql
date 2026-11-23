
-- Week 6 Assignment: SQL Joins and Relationships
-- Student Name: Zakaria Abdikarim Khalif
-- Date: 23 November 2026


-- Question 1: INNER JOIN
-- Retrieve employee details and their office codes

SELECT
    employees.firstName,
    employees.lastName,
    employees.email,
    employees.officeCode
FROM employees
INNER JOIN offices
    ON employees.officeCode = offices.officeCode;


-- Question 2: LEFT JOIN
-- Retrieve product names, vendors, and product lines

SELECT
    products.productName,
    products.productVendor,
    productlines.productLine
FROM products
LEFT JOIN productlines
    ON products.productLine = productlines.productLine;


-- Question 3: RIGHT JOIN
-- Retrieve the first 10 orders and their customer numbers

SELECT
    orders.orderDate,
    orders.shippedDate,
    orders.status,
    orders.customerNumber
FROM customers
RIGHT JOIN orders
    ON customers.customerNumber = orders.customerNumber
LIMIT 10;
