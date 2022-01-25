USE codeup_test_db;
DROP TABLE IF EXISTS quotes;
CREATE TABLE quotes (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        author_first_name VARCHAR(100),
                        author_last_name VARCHAR(100) NOT NULL DEFAULT 'anonymous',
                        content TEXT,
                        PRIMARY KEY (id)
);