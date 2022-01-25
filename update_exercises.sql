USE codeup_test_db;

SELECT 'Sales * 10' AS 'a.';
SELECT * FROM albums;
UPDATE albums SET sales = sales * 10;
SELECT * FROM albums;

SELECT 'Boomer music' AS 'b.';
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date < 1980;

SELECT 'Return of the King of Pop' AS 'c.';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
SELECT * FROM albums WHERE artist = 'Peter Jackson';