--Day 1 
CREATE DATABASE oleg_db;
--Best practice USE CAPITALS
--Use [When use spaces between] but better dont use spaces and apostrophes
--End with a semicolon. Only needed when executing multiple commands
DROP DATABASE oleg_db;

USE oleg_db;

CREATE TABLE film_table
(
    --First digit in IDENTITY denotes the start value
    --2nd digit in the IDENTITY denotes the increment BY value
    film_id INT IDENTITY(1,1) PRIMARY KEY,--autogenerating the number, cannot set it explicit manually
    film_name VARCHAR(10),
    film_type VARCHAR(6)
);

DROP TABLE film_table;

--descibes the table
SP_HELP film_table

INSERT INTO film_table
VALUES
('Batman', 'Action'),
('IronMan', 'Action')

SELECT * FROM film_table

INSERT INTO film_table
(film_type, film_name)
VALUES
('Sci-fi', 'Mandolaria'),
('Sci-fi', 'Star Trek')

SELECT * FROM film_table

--Practice with Jack
DROP TABLE film_table;
DROP TABLE director_table;
CREATE DATABASE oleg_db
USE oleg_db
CREATE TABLE film_table(
    film_id INT IDENTITY(1,1) PRIMARY KEY,
    film_name VARCHAR(10),
    film_type VARCHAR(10),
    release_date DATETIME,
    director_id VARCHAR(20),
    writer VARCHAR(20),
    star INTEGER,
    film_language VARCHAR(10),
    website VARCHAR(30),
    plot_summary VARCHAR(500)
);
INSERT INTO film_table(
    film_name,
    film_type,
    release_date,
    director_id,
    writer,
    star,
    film_language,
    website,
    plot_summary
)
VALUES(
    'Titanic',
    'Romance',
    '1997-11-01',
    '1',
    'James Cameron',
    '5',
    'English',
    'www.titanic.com',
    'plot plotplotplotplotplot plotplotplotplotplotplot plotplotplotplotplot plotplotplotplotplotplotplotplot'
);
SELECT * FROM film_table;
CREATE TABLE director_table(
    director_id INT IDENTITY(1,1) PRIMARY KEY,
    director_name VARCHAR(20),
    film_id INTEGER
)
INSERT INTO director_table (director_name, film_id) VALUES ('James Cameron', 1);

SELECT * FROM film_table;
SELECT * FROM director_table;

ALTER TABLE film_table
    ADD CONSTRAINT fk_directorID
    FOREIGN KEY (director_id)
    REFERENCES director_table(director_id)
    ON DELETE CASCADE;

EXEC sp_fkeys 'director_table'

DELETE FROM director_table WHERE director_id =1;

--Jacks COde
CREATE DATABASE jackI_db;
 
USE jackI_db;
 
DROP TABLE film_table;
DROP TABLE director_table;
 
CREATE TABLE film_table(
    film_id INT IDENTITY(1,1) PRIMARY KEY,
    film_name VARCHAR(10),
    film_type VARCHAR(10),
    release_date DATETIME,
    director_id INTEGER,
    writer VARCHAR(20),
    star INTEGER,
    film_language VARCHAR(10),
    website VARCHAR(30),
    plot_summary VARCHAR(500)
)
 
INSERT INTO film_table (
    film_name, 
    film_type, 
    release_date, 
    director_id, 
    writer, 
    star, 
    film_language, 
    website, 
    plot_summary)
VALUES ('Titanic',
 'Romance',
  '1997-11-01',
  '1', 
  'James Cameron', 
  '5', 
  'English', 
  'www.titanic.com', 
  'Seventeen-year-old Rose hails from an aristocratic family and is set to be married. When she boards the Titanic, she meets Jack Dawson, an artist, and falls in love with him.'
  );
 
  SELECT * FROM film_table;
 
CREATE TABLE director_table(
    director_id INT IDENTITY(1,1) PRIMARY KEY,
    director_name VARCHAR(20),
    film_id INTEGER
)
 
INSERT INTO director_table (director_name, film_id) VALUES ('James Cameron', 1);
 
SELECT * FROM director_table;
 
SELECT * FROM film_table;
 
ALTER TABLE film_table 
  ADD CONSTRAINT fk_directorID 
  FOREIGN KEY (director_id) 
  REFERENCES director_table(director_id) 
  ON DELETE CASCADE;
 
EXEC sp_fkeys 'director_table'
 
DELETE FROM director_table WHERE director_id = 1;