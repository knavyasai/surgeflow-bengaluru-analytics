-- Top 10 Most Popular Routes
SELECT
    pickup_zone,
    drop_zone,
    COUNT(trip_id) AS trip_count,
    ROUND(AVG(fare), 2) AS avg_fare,
    ROUND(SUM(fare), 2) AS total_revenue
FROM trips
GROUP BY pickup_zone, drop_zone
ORDER BY trip_count DESC
LIMIT 10;
