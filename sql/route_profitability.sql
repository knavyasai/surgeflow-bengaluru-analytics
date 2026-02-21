-- Route Profitability
SELECT pickup_zone,
       drop_zone,
       COUNT(*) AS total_trips,
       SUM(fare) AS total_revenue,
       AVG(distance_km) AS avg_distance
FROM trips
GROUP BY pickup_zone, drop_zone
ORDER BY total_revenue DESC
LIMIT 15;


-- Peak Demand Hour
SELECT pickup_hour,
       COUNT(*) AS total_trips
FROM trips
GROUP BY pickup_hour
ORDER BY total_trips DESC
LIMIT 1;
