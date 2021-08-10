SELECT name, year_of_issue FROM album WHERE year_of_issue = 2018;
SELECT name, duration FROM song WHERE duration = (SELECT MAX(duration) FROM song);
SELECT name FROM song WHERE duration >= 210;
SELECT name FROM collection WHERE year_of_issue BETWEEN 2018 AND 2020;
SELECT * FROM performer WHERE name NOT LIKE '% %';
SELECT name FROM song WHERE name LIKE '%my%';