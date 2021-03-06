USE ad_lister;

CREATE TABLE IF NOT EXISTS users(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    username VARCHAR(75) DEFAULT 'NONE',
    email VARCHAR(80),
    PRIMARY KEY(id)
);

SHOW TABLES;
DESCRIBE users;

CREATE TABLE IF NOT EXISTS ads(
     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
     title VARCHAR(50) NOT NULL,
    description VARCHAR(50) NOT NULL,
    user_id INT,
    PRIMARY KEY(id),
    UNIQUE(user_id)
    );

SHOW TABLES;
DESCRIBE ads;

CREATE TABLE IF NOT EXISTS categories(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
    );

SHOW TABLES;
DESCRIBE categories;

CREATE TABLE IF NOT EXISTS ad_categories(
        category_id INT,
        ad_id INT
);

SHOW TABLES;
DESCRIBE ad_categories;