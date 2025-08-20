SELECT name, 
       population, 
       ROUND((population / 40000000) * 100, 2) AS percentage_of_total 
FROM cities 
ORDER BY population DESC 
LIMIT 10;
