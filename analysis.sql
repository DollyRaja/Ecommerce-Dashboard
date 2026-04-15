-- E-commerce Sales Analysis using SQL

-- 1. Total Revenue
SELECT SUM(Amount) AS Total_Revenue
FROM details;

-- 2. Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM details;

-- 3. Top 5 Customers by Revenue
SELECT o.CustomerName, SUM(d.Amount) AS Revenue
FROM orders o
JOIN details d ON o.OrderID = d.OrderID
GROUP BY o.CustomerName
ORDER BY Revenue DESC
LIMIT 5;

-- 4. Sales by State
SELECT o.State, SUM(d.Amount) AS Revenue
FROM orders o
JOIN details d ON o.OrderID = d.OrderID
GROUP BY o.State
ORDER BY Revenue DESC;

-- 5. Category-wise Sales
SELECT Category, SUM(Amount) AS Revenue
FROM details
GROUP BY Category
ORDER BY Revenue DESC;

-- 6. Payment Mode Analysis
SELECT PaymentMode, COUNT(*) AS Total_Orders
FROM details
GROUP BY PaymentMode;

-- 7. Monthly Profit Trend
SELECT MONTH(o.OrderDate) AS Month, SUM(d.Profit) AS Profit
FROM orders o
JOIN details d ON o.OrderID = d.OrderID
GROUP BY Month
ORDER BY Month;