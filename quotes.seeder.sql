USE codeup_test_db;

INSERT INTO quotes(author_first_name, author_last_name, content)
VALUES(1, 'Douglas', 'Adams', 'Don', 't Panic'),
       ('Steve', 'Maraboli', 'Happines is not the absent of problems'),
       ('Ernest', 'Heningway', 'The World breaks everyone'),
       ('Lou', 'Holtz', 'Virtually Nothing impossible if you put your mind to it');

SELECT author_first_name, content FROM quotes;