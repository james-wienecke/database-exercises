USE codeup_test_db;

INSERT INTO quotes (author_first_name, author_last_name, content)
VALUES  ('Douglas', 'Adams', 'Don''t panic.'),
        ('Keanu', 'Reeves', 'Whoa...'),
        ('Steve', 'Maraboli', 'Happiness is not the absence of problems.'),
        ('Earnest', 'Hemmingway', 'The world breaks everyone...');

SELECT id, author_first_name, author_last_name, content FROM quotes;

# TRUNCATE quotes;