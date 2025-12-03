-- PHASE 2 STEP 2
-- View all users
SELECT * FROM users;

-- View all ratings
SELECT * FROM ratings;

-- List all movies
SELECT * FROM movies;

-- Find movies rated by a specific user
SELECT name, title, rating_value
FROM users
INNER JOIN ratings
ON users.user_id = ratings.user_id
INNER JOIN movies
ON ratings.movie_id = movies.movie_id
WHERE name = 'Hauwa Abdullahi';


-- PHASE 3

-- Find users older than 25
SELECT *
FROM users
WHERE age > 25;

-- Find movies released between 2000 and 2020
SELECT *
FROM movies
WHERE release_year BETWEEN 2000 AND 2020;

-- Find female users from Abuja
SELECT *
FROM users
WHERE gender = 'Female' AND location = 'Abuja';

-- Find movies that are not Sci-Fi
SELECT *
FROM movies
WHERE genre <> 'Sci-Fi';

-- Find ratings greater than or equal to 4
SELECT *
FROM ratings
WHERE rating_value >= 4;

-- PHASE 4

-- Sort movies by release year (newest first)
SELECT title, release_year
FROM movies
ORDER BY release_year DESC;

-- List distinct genres
SELECT DISTINCT genre, title
FROM movies;

-- Top 3 highest ratings
SELECT *
FROM ratings
ORDER BY rating_value DESC
LIMIT 3;

-- Skip the first 2 rows and display next 3
SELECT *
FROM ratings
ORDER BY rating_value DESC
OFFSET 2
LIMIT 3;

-- Sort users alphabetically
SELECT *
FROM users
ORDER BY name ASC;