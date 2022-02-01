-- Users
CREATE TABLE IF NOT EXISTS users
(
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    role     CHAR NOT NULL, -- 'A' is admin, 'S' is Student
    username VARCHAR(50) NOT NULL ,
    password varchar(100) NOT NULL,
    PRIMARY KEY (id)
    );

-- quizzes
CREATE TABLE IF NOT EXISTS quizzes(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    subject VARCHAR(100),
    title VARCHAR(100),
    PRIMARY KEY(id),
    );


--  Question
CREATE TABLE IF NOT EXISTS questions
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    txt     TEXT,
    PRIMARY KEY (id),
    response CHAR(20),
    quiz_id INT,
    FOREIGN KEY (quiz_id) REFERENCES quizzes (id)
    );

-- answers
CREATE TABLE IF NOT EXISTS answers
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    txt     TEXT,
    correct CHAR, -- (R/W)
    question_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (question_id) REFERENCES questions (id)
    );

-- Results
CREATE TABLE IF NOT EXISTS Results
(
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    score    FLOAT,
    users_id INT,
    quizzes_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (users_id) REFERENCES users (id),
    FOREIGN KEY (quizzes_id) REFERENCES quizzes (id)
    );
SELECT COUNT(*) AS 'students that have taken the quiz' FROM (
            SELECT DISTINCT users_id
            FROM Results
            JOIN quizzes AS q ON q.id = Results.quizzes_id AND q.id = 3);