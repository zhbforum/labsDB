SELECT cities.name AS 'Name on city', regions.name AS 'Name of region'
FROM cities
JOIN regions ON cities.region = regions.uuid 
WHERE regions.name = 'Nord';