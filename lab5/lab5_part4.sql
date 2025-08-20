SELECT cities.region, SUM(cities.population) AS total_population
FROM cities
WHERE cities.population > 300000
GROUP BY cities.region;
