-- Для каждой страны найти город с минимальным количеством населения
SELECT name, population 
FROM city AS ci
WHERE population = (SELECT MIN(population)
					FROM city
					WHERE countryCode = ci.countryCode)
ORDER BY population DESC;
