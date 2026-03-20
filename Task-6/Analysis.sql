-- Step 1: Create the table
CREATE TABLE online_sales (
    order_id SERIAL PRIMARY KEY,
    order_date DATE NOT NULL,
    amount NUMERIC(10,2) NOT NULL,
    product_id INT NOT NULL
);

-- Step 2: Insert sample data
INSERT INTO online_sales (order_date, amount, product_id) VALUES
('2025-01-05', 150.00, 101),
('2025-01-15', 200.00, 102),
('2025-02-02', 300.00, 101),
('2025-02-14', 120.00, 103),
('2025-03-10', 500.00, 104),
('2025-03-18', 250.00, 105),
('2025-04-05', 100.00, 102),
('2025-04-12', 400.00, 101),
('2025-04-25', 350.00, 103),
('2025-05-03', 270.00, 104);

-- Step 3: Monthly revenue & order volume analysis
SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM 
    online_sales
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month;

-- Step 4: Filter for a specific time period 
SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM 
    online_sales
WHERE 
    EXTRACT(YEAR FROM order_date) = 2025
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month;
