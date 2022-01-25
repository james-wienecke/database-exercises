USE codeup_test_db;

INSERT INTO quotes (author_first_name, author_last_name, content)
VALUES  ('Douglas', 'Adams', 'Don''t panic.'),
        ('Keanu', 'Reeves', 'Whoa...'),
        ('Steve', 'Maraboli', 'Happiness is not the absence of problems.'),
        ('Earnest', 'Hemmingway', 'The world breaks everyone...'),
        ('Mark', 'Twain', 'Clothes make the man. Naked people have little or no influence on society.');

SELECT id, author_first_name, author_last_name, content FROM quotes;

# TRUNCATE quotes;