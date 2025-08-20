SELECT CONCAT(name, ' (', region, ')') AS formatted_name 
FROM cities 
WHERE population > 100000 
ORDER BY name;
