-- user table
CREATE TABLE IF NOT EXISTS users(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR(80),
    password VARCHAR(100),
    PRIMARY KEY(id),
    CONSTRAINT uc_email UNIQUE (email)
    );
