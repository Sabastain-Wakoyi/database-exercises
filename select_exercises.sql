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