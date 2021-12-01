-- Домашнее задание по теме "SELECT - запросы, выборки из одной таблицы" 17.11.2021 (проверено)

SELECT name, year_of_issue FROM albums
	WHERE year_of_issue = 2018;
	
SELECT name, duration FROM tracks
	WHERE duration = (SELECT max(duration) FROM tracks);
	
SELECT name FROM tracks
	WHERE duration >= 210;
	
SELECT name FROM collections
	WHERE year_of_issue BETWEEN 2018 and 2020;
	
SELECT name FROM performers
	WHERE name NOT LIKE '% %';
	
SELECT name FROM tracks
	WHERE name iLIKE '%my%';
	
-- Домашнее задание по теме "Группировки, выборки из нескольких таблиц" 24.11.2021

SELECT COUNT(p.id) count, g.name FROM genres g
JOIN genresperformers gp ON g.id = gp.genre_id
JOIN performers p ON gp.performers_id = p.id
GROUP BY g.id
ORDER BY count DESC;


SELECT COUNT(t.id) count, a.name FROM albums a
JOIN tracks t ON a.id = t.albums_id
WHERE a.year_of_issue = 2019 or a.year_of_issue = 2020
GROUP BY a.id
ORDER BY count DESC;


SELECT AVG(t.duration) avg, a.name FROM albums a
JOIN tracks t ON a.id = t.albums_id
GROUP BY a.id
ORDER BY avg desc


SELECT DISTINCT(p.id), p.name FROM performers p
JOIN albumsperformers ap ON p.id = ap.performers_id
JOIN albums a ON ap.albums_id = a.id
WHERE a.year_of_issue != 2020
ORDER BY p.name;


SELECT c.name FROM collections c
JOIN trackscollections tc ON c.id = tc.collections_id 
JOIN tracks t ON tc.tracks_id = t.id
JOIN albums a ON t.albums_id = a.id 
JOIN albumsperformers ap ON a.id = ap.albums_id
JOIN performers p ON ap.performers_id = p.id 
WHERE p.name = 'Green Day' 
ORDER BY c.name;


SELECT DISTINCT(a.id), a.name FROM albums a
JOIN albumsperformers ap ON a.id = ap.albums_id
JOIN performers p ON ap.performers_id = p.id
WHERE p.id in 
(
SELECT p.id FROM performers p
JOIN genresperformers gp ON p.id = gp.performers_id
JOIN genres g ON gp.genre_id = g.id
GROUP BY p.id
HAVING COUNT(g.id) >1
ORDER BY p.name
)


SELECT t.name FROM tracks t
LEFT JOIN trackscollections tc ON t.id = tc.tracks_id 
WHERE tc.collections_id is NULL;


SELECT p.name FROM performers p
JOIN albumsperformers ap ON p.id = ap.performers_id 
JOIN albums a ON ap.albums_id = a.id 
JOIN tracks t ON a.id = t.albums_id
WHERE t.duration =
(
SELECT MIN(duration) FROM tracks
)
ORDER BY p.name;


SELECT a.name FROM albums a
JOIN tracks t ON a.id = t.albums_id
GROUP BY a.id
HAVING COUNT(t.id) = 
(
SELECT COUNT(t.id) count FROM tracks t
JOIN albums a ON t.albums_id = a.id
GROUP BY a.id
ORDER BY count
LIMIT 1
)
ORDER BY a.name;

