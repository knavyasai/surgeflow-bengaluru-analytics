-- Surge Pricing Impact Analysis
SELECT
    surge_multiplier,
    COUNT(trip_id) AS total_trips,
    ROUND(SUM(fare), 2) AS total_revenue,
    ROUND(SUM(fare / surge_multiplier), 2) AS revenue_at_base_rate,
    ROUND(SUM(fare - (fare / surge_multiplier)), 2) AS surge_profit_increment
FROM trips
GROUP BY surge_multiplier
ORDER BY surge_multiplier ASC;
