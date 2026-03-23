-- Total records
SELECT COUNT(*) FROM finance_details;

-- Total revenue
SELECT SUM(revenue) AS total_revenue FROM finance_details;

-- Total cost
SELECT SUM(cost) AS total_cost FROM finance_details;

-- Profit calculation
SELECT SUM(revenue - cost) AS total_profit FROM finance_details;

-- Payment method analysis
SELECT payment_method, COUNT(*) AS total_orders
FROM finance_details
GROUP BY payment_method
ORDER BY total_orders DESC;
-- Discount impact
SELECT SUM(discount) AS total_discount FROM finance_details;

-- Delivery cost analysis
SELECT AVG(delivery_cost) AS avg_delivery_cost FROM finance_details;
