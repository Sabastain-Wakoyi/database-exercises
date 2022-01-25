USE codeup_test_db;

-- SELECT QUERIES
SELECT name AS 'Albums released after 1991'
FROM albums
WHERE release_date > 1991;

-- Albums with the genre 'disco'
SELECT name AS 'Albums with the genre ''disco'''
FROM albums
WHERE genre LIKE '%disco%';

-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)

SELECT name AS 'Albums by ''Whitney Houston'''
FROM albums
WHERE artist LIKE '%whitney houston%';

--  DELETE
DELETE
FROM albums
WHERE release_date > 1991;

DELETE
FROM albums
WHERE genre LIKE = 'disco';

DELETE
FROM albums
WHERE artist LIKE ='Whitney Houston';

SELECT * FROM albums;