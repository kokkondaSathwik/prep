CREATE DATABASE IF NOT EXISTS instagramDb;
USE instagramDb;
CREATE TABLE IF NOT EXISTS users(
uid INT PRIMARY KEY,
uname VARCHAR(50),
email VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS posts(
pid INT PRIMARY KEY,
uid INT,
caption VARCHAR(50)
);

INSERT INTO users(uid,uname,email)
VALUES
(1, "a", "@123"),
(2, "b", "b@123");

INSERT INTO posts(pid,uid,caption)
VALUES
(1, 01, "dog"),
(2, 02, "cat");

USE instagramDb;
SHOW TABLES;

SELECT * FROM users;
SELECT * FROM posts;















