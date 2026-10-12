Create Database FoodDB;
use FoodDB;
select database();
CREATE TABLE food_dely (
    ID VARCHAR(50),
    Delivery_person_ID VARCHAR(50),
    Delivery_person_Age VARCHAR(20),
    Delivery_person_Ratings VARCHAR(20),
    Restaurant_latitude VARCHAR(30),
    Restaurant_longitude VARCHAR(30),
    Delivery_location_latitude VARCHAR(30),
    Delivery_location_longitude VARCHAR(30),
    Order_Date VARCHAR(30),
    Time_Orderd VARCHAR(30),
    Time_Order_picked VARCHAR(30),
    Weather_conditions VARCHAR(50),
    Road_traffic_density VARCHAR(50),
    Vehicle_condition VARCHAR(20),
    Type_of_order VARCHAR(50),
    Type_of_vehicle VARCHAR(50),
    Multiple_deliveries VARCHAR(20),
    Festival VARCHAR(20),
    City VARCHAR(50),
    Time_Taken_Min VARCHAR(20),
    Order_Month VARCHAR(20),
    Day_of_Week VARCHAR(20),
    Week_of_Month VARCHAR(20),
    Distance_KM VARCHAR(30)
);
show tables;
describe food_dely;
use FoodDB;
SELECT COUNT(*) AS Total_Records
FROM food_dely;
SELECT *
FROM food_dely
LIMIT 10;
show tables;
select * from food_dely;

SELECT COUNT(*) AS Total_Records
FROM food_dely;

SELECT 
    AVG(CAST(Time_Taken_Min AS DECIMAL(10,2))) AS Average_Delivery_Time
FROM food_dely;

SELECT
    City,
    ROUND(AVG(CAST(Time_Taken_Min AS DECIMAL(10,2))), 2) AS Average_Delivery_Time
FROM food_dely
GROUP BY City
ORDER BY Average_Delivery_Time DESC;

SELECT
    Road_traffic_density,
    COUNT(*) AS Total_Orders,
    ROUND(AVG(CAST(Time_Taken_Min AS DECIMAL(10,2))), 2) AS Average_Delivery_Time
FROM food_dely
GROUP BY Road_traffic_density
ORDER BY Average_Delivery_Time DESC;

SELECT
    Weather_conditions,
    COUNT(*) AS Total_Orders,
    ROUND(AVG(CAST(Time_Taken_Min AS DECIMAL(10,2))), 2) AS Average_Delivery_Time
FROM food_dely
GROUP BY Weather_conditions
ORDER BY Average_Delivery_Time DESC;

SELECT
    Type_of_vehicle,
    COUNT(*) AS Total_Orders,
    ROUND(AVG(CAST(Time_Taken_Min AS DECIMAL(10,2))), 2) AS Average_Delivery_Time
FROM food_dely
GROUP BY Type_of_vehicle
ORDER BY Average_Delivery_Time ASC;

SELECT
    Multiple_deliveries,
    COUNT(*) AS Total_Orders,
    ROUND(
        AVG(CAST(Time_Taken_Min AS DECIMAL(10,2))),
        2
    ) AS Average_Delivery_Time
FROM food_dely
GROUP BY Multiple_deliveries
ORDER BY Multiple_deliveries;

SELECT
    Festival,
    COUNT(*) AS Total_Orders,
    ROUND(
        AVG(CAST(Time_Taken_Min AS DECIMAL(10,2))),
        2
    ) AS Average_Delivery_Time
FROM food_dely
GROUP BY Festival
ORDER BY Average_Delivery_Time DESC;

SELECT
    ROUND(AVG(
        CASE
            WHEN Festival = 'Yes'
            THEN CAST(Time_Taken_Min AS DECIMAL(10,2))
        END
    ), 2) AS Festival_Avg_Delivery_Time,

    ROUND(AVG(
        CASE
            WHEN Festival = 'No'
            THEN CAST(Time_Taken_Min AS DECIMAL(10,2))
        END
    ), 2) AS Non_Festival_Avg_Delivery_Time
FROM food_dely;

SELECT
    City,
    COUNT(*) AS Total_Orders
FROM food_dely
GROUP BY City;

SELECT
    City,
    COUNT(*) AS Total_Orders,
    ROUND(AVG(CAST(Time_Taken_Min AS DECIMAL(10,2))), 2) AS Avg_Delivery_Time
FROM food_dely
GROUP BY City
ORDER BY Avg_Delivery_Time DESC;

SELECT COUNT(*) AS Total_Orders
FROM food_dely;

SELECT AVG(CAST(Time_Taken_Min AS DECIMAL(10,2))) AS Average_Time
FROM food_dely;

SELECT MIN(CAST(Time_Taken_Min AS DECIMAL(10,2))) AS Minimum_Time
FROM food_dely;

SELECT MIN(CAST(Time_Taken_Min AS DECIMAL(10,2))) AS Maximum_Time
FROM food_dely;

SELECT SUM(CAST(Time_Taken_Min AS DECIMAL(10,2))) AS Total_Delivery_Time
FROM food_dely;

SELECT
    City,
    COUNT(*) AS Total_Orders,
    AVG(CAST(Time_Taken_Min AS DECIMAL(10,2))) AS Avg_Time
FROM food_dely
GROUP BY City;

