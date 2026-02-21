-- Revenue by Zone
SELECT pickup_zone,
       SUM(fare) AS total_revenue,
       COUNT(trip_id) AS total_trips
FROM trips
GROUP BY pickup_zone
ORDER BY total_revenue DESC;


-- Revenue by Hour
SELECT pickup_hour,
       SUM(fare) AS total_revenue,
       COUNT(trip_id) AS total_trips
FROM trips
GROUP BY pickup_hour
ORDER BY total_revenue DESC;


-- Top 10 Drivers by Earnings
SELECT driver_id,
       COUNT(trip_id) AS total_trips,
       SUM(fare) AS total_earnings
FROM trips
GROUP BY driver_id
ORDER BY total_earnings DESC
LIMIT 10;
