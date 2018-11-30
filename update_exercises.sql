USE codeup_test_db;

SELECT name AS 'All albums in this table'
FROM albums;

SELECT name AS 'All albums released before 1980' FROM albums WHERE release_date < 1980;

SELECT name AS 'All albums by Michael Jackson' FROM albums WHERE artist = 'MICHAEL JACKSON';

UPDATE albums SET sales = sales * 10;
select * from albums;

UPDATE albums SET release_date = 1800 WHERE release_date < 1980;
SELECT release_date, name AS 'All albums released before 1980' FROM albums WHERE release_date < 1980;

UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'michael jackson';
SELECT name AS 'All albums by Michael Jackson' FROM albums WHERE artist = 'peter JACKSON';

