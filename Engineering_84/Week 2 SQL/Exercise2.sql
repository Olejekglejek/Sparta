CREATE DATABASE spartans_db;
USE spartans_db;

CREATE TABLE spartans_table;
(
    spartan_id INT IDENTITY(1,1) PRIMARY KEY,
    Title VARCHAR(20),
    First_Name VARCHAR(20),
    Last_Name VARCHAR(20),
    University VARCHAR(30),
    Course VARCHAR(30),
    Mark INTEGER
);
INSERT INTO film_table(
    spartan_id,
    Title,
    First_Name,
    Last_Name,
    University,
    Course,
    Mark
)
VALUES(
    'Mr.',
    'Oleg',
    'Negruta',
    'University of Oradea',
    'DevOps',
    10

);