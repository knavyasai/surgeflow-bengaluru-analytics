-- Surge Multiplier Distribution
SELECT surge_multiplier,
       COUNT(*) AS total_trips
FROM trips
GROUP BY surge_multiplier
ORDER BY surge_multiplier;


-- Revenue Impact of Surge
SELECT surge_multiplier,
       COUNT(*) AS total_trips,
       SUM(fare) AS total_revenue,
       AVG(fare) AS avg_fare
FROM trips
GROUP BY surge_multiplier
ORDER BY surge_multiplier;
