USE codeup_test_db;

INSERT INTO quotes (id, author_first_name, author_last_name, content)
VALUES (1, 'Douglas', 'Adams', 'Don''t panic');

SELECT author_first_name, content FROM quotes;