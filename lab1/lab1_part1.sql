SELECT name, population
FROM cities
WHERE region = 'S'
ORDER BY population DESC
LIMIT 10, 10;