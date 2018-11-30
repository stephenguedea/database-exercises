USE codeup_test_db;

SELECT name AS 'The name of all albums by Pink Floyd'
FROM albums
WHERE artist = 'pink floyd';

SELECT release_date AS 'The year Sgt. Pepper''s Lonely Hearts Club was release'
FROM albums
WHERE name LIKE 'Sgt%';

SELECT genre AS 'The genre for Nirvana'
FROM albums
WHERE artist = 'nirvana';

SELECT name AS 'Which albums were released in the 1990s'
FROM albums
WHERE release_date
BETWEEN 1990 AND 1999;

SELECT name AS 'Which albums had less than 20 million certified sale'
FROM albums
WHERE sales <= 20.0;

SELECT name AS 'All the albums with a genre of "Rock"' FROM albums WHERE genre = 'rock';

-- OR for all types of Rock genre...
SELECT name AS 'All the albums with a genre of "Rock"' FROM albums WHERE genre LIKE '%rock%';