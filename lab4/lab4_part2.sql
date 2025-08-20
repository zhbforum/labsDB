SELECT name, CHAR_LENGTH(name) AS name_length
FROM cities
WHERE CHAR_LENGTH(name) NOT IN (8, 9, 10);
