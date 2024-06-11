-- ***********************
-- Name: Meet Hitesh Sonagara
-- ID: 122208226
-- Date: 05-06-2024
-- Purpose: Lab 03 DBS211
-- ***********************

--Q1).
//TO CREATE TABLE NAMED "L5_MOVIES" WHERE SCORE SHOULD NOT BE IN NEGATIVE NUMBER AND SCORE SHOULD NOT BE GREATER THAN 5
CREATE TABLE L5_MOVIES(
    M_ID NUMBER(3) NOT NULL,
    TITLE VARCHAR(35) NOT NULL,
    RELEASE_YEAR NUMBER(4) NOT NULL,
    DIRECTOR NUMBER(4)NOT NULL,
    SCORE NUMBER(3,2),
    PRIMARY KEY(M_ID),
    CHECK(SCORE BETWEEN 0 AND 5)
    );

//TO CREATE TABLE L5_ACTORS    
CREATE TABLE L5_ACTORS(
    A_ID NUMBER(5) NOT NULL,
    FIRST_NAME VARCHAR(25) NOT NULL,
    LAST_NAME VARCHAR(30) NOT NULL,
    PRIMARY KEY(A_ID)
    );

//TO CREATE TABLE L5_CASTING HERE WE HAVE COMPOSITE KEYS    
CREATE TABLE L5_CASTING (
    MOVIE_ID NUMBER(5),
    ACTOR_ID NUMBER(5),
    PRIMARY KEY (MOVIE_ID, ACTOR_ID),
    FOREIGN KEY (MOVIE_ID) REFERENCES L5_MOVIES(M_ID),
    FOREIGN KEY (ACTOR_ID) REFERENCES L5_ACTORS(A_ID)
);

//TO CREATE TABLE L5_DIRECTORS
CREATE TABLE L5_DIRECTORS(
    DIRECTOR_ID NUMBER(5),
    FIRST_NAME VARCHAR(20) NOT NULL,
    LAST_NAME VARCHAR(30) NOT NULL,
    PRIMARY KEY(DIRECTOR_ID)
    );   

--Q2).
//HERE I HAVE ADDED FOREIGN KEY CONSTRAINT TO L5_MOVIES TABLE WHICH REFERENCES TO L5_DIRECTORS
ALTER TABLE L5_MOVIES
ADD CONSTRAINT FK_DIRECTOR
FOREIGN KEY (DIRECTOR) REFERENCES L5_DIRECTORS(DIRECTOR_ID);

--Q3).
//HERE I CREATE A CONSTRAINR TO ENSURE THAT MOVIES TITLES ARE UNIQUE
ALTER TABLE L5_MOVIES
ADD CONSTRAINT UNIQUE_TITLE
UNIQUE (TITLE);

--Q4).
// TO INSERT DATA INTO TABLE L5_DIRECTORS
INSERT ALL
    INTO L5_DIRECTORS
    VALUES(1010,'Rob', 'Minkoff')
    
    INTO L5_DIRECTORS
    VALUES(1020,'Bill', 'Condon')
    
    INTO L5_DIRECTORS
    VALUES(1050,'Josh', 'Cooley')
    
    INTO L5_DIRECTORS
    VALUES(2010,'Brad', 'Bird')
    
    INTO L5_DIRECTORS
    VALUES(3020,'Lake', 'Bell')
    
SELECT * FROM DUAL;

// TO INSERT DATA INTO TABLE L5_MOVIES
INSERT ALL
    INTO L5_MOVIES
    VALUES(100, 'The Lion King', 2019, 3020, 3.50)
    
    INTO L5_MOVIES
    VALUES(200, 'Beauty and the Beast', 2017, 1050, 4.20)
    
    INTO L5_MOVIES
    VALUES(300, 'Toy Story 4', 2019, 1020, 4.50)
    
    INTO L5_MOVIES
    VALUES(400, 'Mission Impossibile', 2018, 2010, 5.00)
    
    INTO L5_MOVIES
    VALUES(500, 'The Secret Life of Pets', 2016, 1010, 3.90)
    
    SELECT * FROM DUAL;
    
SELECT * FROM L5_DIRECTORS;
SELECT * FROM L5_MOVIES;

DROP TABLE L5_CASTING;
DROP TABLE L5_ACTORS;
DROP TABLE L5_MOVIES;
DROP TABLE L5_DIRECTORS;

--Q5).
/*
When you want to delete all the tables, you need to follow a specific order because some tables rely on others. First,
delete the `L5_CASTING` table because it depends on the `L5_MOVIES` and `L5_ACTORS` tables.
Next, delete the `L5_ACTORS` table. After that, delete the `L5_MOVIES` table. Finally, delete the `L5_DIRECTORS` table.
If you try to delete a table that other tables depend on, you will get an error.
Therefore, it's important to delete the tables in the correct order to avoid any issues.
*/