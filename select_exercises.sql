USE codeup_test_db;


-- In select_exercises.sql write queries to find the following information.
-- Before each item, output a caption explaining the results:

-- The name of all albums by Pink Floyd.
-- SELECT name AS 'Pink Floyd''s albums'
-- FROM albums
-- WHERE artist = 'Pink Floyd';
SELECT 'The name of all albums by Pink Floyd'
SELECT * FROM albums WHERE artist = 'Pink Floyd';


-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released';
SELECT release_year FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- The genre for Nevermind
SELECT 'The genre for Nevermind';
SELECT genre FROM albums WHERE name = 'Nevermind';

-- Which albums were released in the 1990s
SELECT 'Which albums were released in the 1990s';
SELECT * FROM albums WHERE release_year BETWEEN 1990 AND 1999;

-- Which albums had less than 20 million certified sales
SELECT 'Which albums had less than 20 million certified sales';
SELECT * FROM albums WHERE sales <= 20;

-- All the albums with a genre of "Rock".
-- Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT 'All the albums with a genre of Rock';
SELECT * FROM albums WHERE genre = 'Rock';