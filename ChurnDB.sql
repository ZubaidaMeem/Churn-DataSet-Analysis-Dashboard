CREATE DATABASE churndb;
SHOW DATABASES;
USE churndb;
SHOW tables;

SELECT * FROM customer_churn;

-- Total Customers
SELECT COUNT(*) 
FROM CUSTOMER_CHURN;

-- Total Churn Customers
SELECT COUNT(*)
FROM CUSTOMER_CHURN
WHERE churn = 'Yes';

-- CHURN Rate
SELECT 
ROUND(SUM(CASE WHEN CHURN = 'YES' THEN 1 ELSE 0 END)*100/ COUNT(*),2) 
AS Churn_Rate
FROM CUSTOMER_CHURN;

-- AVERAGE Monthly Charge
SELECT AVG(Monthly_Charges) 
FROM Customer_Churn;

-- Churn by Contract Type
SELECT contract_type, count(*) AS Customers
FROM customer_churn
GROUP BY CONTRACT_TYPE;

-- Churn by Internet Service
SELECT INTERNET_SERVICE, count(*) AS Customers
FROM customer_churn
GROUP BY INTERNET_SERVICE;

-- Churn by State sorted
SELECT STATE, COUNT(*) 
FROM CUSTOMER_CHURN
GROUP BY STATE 
ORDER BY 2 DESC;

-- PAYMENT METHOD WISE CUSTOMERS
SELECT PAYMENT_METHOD, COUNT(*) 
FROM CUSTOMER_CHURN
GROUP BY PAYMENT_METHOD
ORDER BY 2 DESC;

-- Subscription Type Wise Customers
SELECT Subscription_Type, COUNT(*)
FROM CUSTOMER_CHURN
GROUP BY Subscription_Type;

SELECT State,
SUM(TOTAL_CHARGES) AS State_Charges
FROM CUSTOMER_CHURN
GROUP BY State
ORDER BY 2 DESC;

-- Average Charges by Contract
SELECT Contract_Type,
AVG(Monthly_Charges)
FROM customer_churn
GROUP BY Contract_Type;

-- Senior Citizens Churn
SELECT Senior_Citizen,
COUNT(*)
FROM customer_churn
WHERE Churn='Yes'
GROUP BY Senior_Citizen;

-- Top 10 High Value Customers
SELECT Customer_Name,
Customer_Value
FROM customer_churn
ORDER BY Customer_Value DESC
LIMIT 10;

-- Customers Without Tech Support
SELECT *
FROM customer_churn
WHERE Tech_Support='No';



