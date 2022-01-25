USE codeup_test_db;

-- Write SELECT statements to output each of the following with a caption:
--
--     All albums in your table.
SELECT 'All Albums' AS 'Albums';
SELECT * FROM albums;

-- All albums released before 1980
SELECT 'All Albums before 1980' AS '< 1980';
SELECT * FROM albums WHERE release_date < 1980;

-- All albums by Michael Jackson
SELECT 'All Michael Jackson Albums' AS 'Michael Jackson Albums';
SELECT * FROM albums WHERE artist ='Michael Jackson';

--  UPDATE QUERIES

-- Make all the albums 10 times more popular (sales * 10)
UPDATE albums
SET  sales = (sales * 10);
SELECT * FROM albums;

-- Move all the albums before 1980 back to the 1800s.
SELECT 'All Albums before 1980 changed to 1800''s' AS '< 1980';
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date < 1980;

-- Change 'Michael Jackson' to 'Peter Jackson'
SELECT 'Change Michael to Peter Jackson Albums' AS 'Peter Jackson Albums';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT * FROM albums WHERE artist ='Peter Jackson';