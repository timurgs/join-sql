SELECT g.name, count(performer_id) FROM genre g
JOIN genre_performer gp ON g.id = gp.genre_id
GROUP BY g.name;

SELECT a.name, COUNT(s.id) FROM album a
JOIN song s ON a.id = s.album_id
WHERE a.year_of_issue BETWEEN 2019 AND 2020
GROUP BY a.name;

SELECT a.name, ROUND(AVG(duration), 2) FROM album a
LEFT JOIN song s ON a.id = s.album_id
GROUP BY a.name;

SELECT p.name FROM performer p
JOIN performer_album pa ON p.id = pa.performer_id
JOIN album a ON pa.album_id = a.id
WHERE a.year_of_issue != 2020
GROUP BY p.name;

SELECT c.name FROM performer p
JOIN performer_album pa ON p.id = pa.performer_id
JOIN album a ON pa.album_id = a.id
JOIN song s ON a.id = s.album_id
JOIN collection_song cs ON s.id = cs.song_id
JOIN collection c ON cs.collection_id = c.id
WHERE p.id = 2
GROUP BY c.name;

SELECT a.name FROM album a
JOIN performer_album pa ON a.id = pa.album_id
JOIN performer p ON pa.performer_id = p.id
JOIN genre_performer gp ON p.id = gp.performer_id
JOIN genre g ON gp.genre_id = g.id
WHERE gp.performer_id IN (SELECT performer_id FROM genre_performer GROUP BY performer_id HAVING COUNT(*) > 1)
GROUP BY a.name;

SELECT s.name FROM song s
LEFT JOIN collection_song cs ON s.id = cs.song_id
WHERE s.id NOT IN (SELECT song_id FROM collection_song);

SELECT p.* FROM performer p
JOIN performer_album pa ON p.id = pa.performer_id
JOIN album a ON pa.album_id = a.id
JOIN song s ON a.id = s.album_id
WHERE s.duration IN (SELECT MIN(duration) FROM song)
GROUP BY p.id;

SELECT a.name FROM album a
JOIN song s ON a.id = s.album_id
GROUP BY a.name
HAVING COUNT(*) = (SELECT MIN(c) FROM (SELECT COUNT(*) c FROM
									   album a JOIN song s ON a.id = s.album_id GROUP BY a.name) X);