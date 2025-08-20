SELECT c.name AS 'Name of city', r.name AS 'Name of region'
FROM cities c
JOIN regions r ON c.region = r.uuid
WHERE c.population > 350000
ORDER BY c.population DESC; 
