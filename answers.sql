-- 1). Finds the total sales for each product.

SELECT ProductID, SUM(Amount) AS TotalSales
FROM Sales
GROUP BY ProductID;

-- 2) Calculates the total sales for each month.

SELECT DATE_FORMAT(SaleDate, '%Y-%m') AS SaleMonth, SUM(Amount) AS TotalSales
FROM Sales
GROUP BY SaleMonth;

-- 3). Identifies customers who made more than 5 purchases.

SELECT CustomerID, COUNT(SaleID) AS Purchase_Count
FROM Sales
GROUP BY CustomerID
HAVING COUNT(SaleID) > 5;
