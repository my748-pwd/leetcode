# 607. Sales Person

SELECT name
FROM SalesPerson
WHERE sales_id NOT IN (
    SELECT sales_id 
    FROM Orders o
    JOIN Company c ON o.com_id = c.com_id
    WHERE c.name = 'RED'
);
