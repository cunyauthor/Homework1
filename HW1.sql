
USE SYS;

DROP TABLE IF EXISTS Movies;

CREATE TABLE Movies 
(
  Movie_Name varchar(100) NOT NULL,
  Reviewer_Name varchar(50) NOT NULL,
  Rate int NOT NULL
);

SELECT * FROM Movies;

LOAD DATA LOCAL INFILE "/Users/fionaho/Desktop/HW1.CSV" 
INTO TABLE Movies
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(Movie_Name, Reviewer_Name, @Rate)
SET
Rate = nullif(@Rate,0)
;

SELECT * FROM Movies ;
SELECT COUNT(*) FROM Movies;