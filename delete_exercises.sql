USE codeup_test_db;

SELECT 'Albums released after 1991:' AS 'a.';
DELETE FROM albums WHERE release_date > 1991;

SELECT 'Albums with the genre ''disco'':' AS 'b.';
DELETE FROM albums WHERE genre = 'disco';

SELECT 'Albums by ''Whitney Houston'':' AS 'c.';
DELETE FROM albums WHERE artist = 'Whitney Houston';