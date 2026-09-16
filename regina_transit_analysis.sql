
-- Regina Transit Accessibility Analysis
-- Ward-level SQL analysis

-- 1. Transit stops by ward
SELECT
    ID AS ward,
    POPULATION AS population,
    stop_count AS transit_stops
FROM ward_analysis
ORDER BY transit_stops DESC;


-- 2. Transit stops per 1,000 residents
SELECT
    ID AS ward,
    POPULATION AS population,
    stop_count AS transit_stops,
    ROUND(
        (CAST(stop_count AS REAL) / POPULATION) * 1000,
        2
    ) AS stops_per_1000
FROM ward_analysis
ORDER BY stops_per_1000 DESC;


-- 3. Wards below population-based expected stop count
SELECT
    ID AS ward,
    POPULATION AS population,
    stop_count AS transit_stops,
    ROUND(expected_stops, 2) AS expected_stops,
    ROUND(stop_difference, 2) AS stop_difference,
    ROUND(difference_percent, 1) AS difference_percent
FROM ward_analysis
WHERE stop_difference < 0
ORDER BY difference_percent ASC;


-- 4. Population per transit stop
SELECT
    ID AS ward,
    POPULATION AS population,
    stop_count AS transit_stops,
    ROUND(
        CAST(POPULATION AS REAL) / stop_count,
        2
    ) AS population_per_stop
FROM ward_analysis
ORDER BY population_per_stop ASC;


-- 5. Transit-stop density by ward
SELECT
    ID AS ward,
    ROUND(population_per_km2, 2) AS population_density,
    ROUND(stops_per_km2, 2) AS transit_stop_density
FROM ward_analysis
ORDER BY transit_stop_density DESC;


-- 6. Top 5 wards by transit-stop density
SELECT
    ID AS ward,
    ROUND(population_per_km2, 2) AS population_density,
    ROUND(stops_per_km2, 2) AS transit_stop_density
FROM ward_analysis
ORDER BY stops_per_km2 DESC
LIMIT 5;
