SELECT cities.region, SUM(cities.population) AS total_population
FROM cities
GROUP BY cities.region
HAVING COUNT(cities.id) >= 10;
