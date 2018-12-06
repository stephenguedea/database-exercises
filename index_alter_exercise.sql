USE codeup_test_db;

ALTER TABLE albums
ADD UNIQUE (name);

INSERT INTO albums(artist, name, release_date, sales, genre) VALUES
('Michael Jackson', 'Dangerous', 1999, 23.1, 'Pop');