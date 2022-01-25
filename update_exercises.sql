USE codeup_test_db;

-- Write SELECT statements to output each of the following with a caption:
--
--     All albums in your table.
SELECT 'All Albums' AS 'Albums';
SELECT * from albums;
SELECT 'All Albums with 10x sales!' AS 'Albums';

UPDATE albums
SET  sales = (sales * 10);
SELECT * from albums;

-- All albums released before 1980
ELECT 'All Albums before 1980' AS '< 1980';
SELECT * from albums WHERE release_date < 1980;

SELECT 'All Albums before 1980 changed to 1800''s' AS '< 1980';
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;
SELECT * from albums WHERE release_date < 1980;