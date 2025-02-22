USE instagramDb;
USE college;

-- unique constraint
CREATE TABLE student(
phonenb INT UNIQUE);

INSERT INTO student(phonenb)
VALUES
(123),
(345);

-- not null

CREATE TABLE student1(
age INT,
rollno INT NOT NULL);

INSERT INTO student1(age,rollno)
VALUES
(20,87),
(19,77);

-- CHECK CONSTRAINT
CREATE TABLE student2(
age INT CHECK(age>20)
);

INSERT INTO student2(age)
VALUES
(100);

-- default constraint

CREATE TABLE  IF NOT EXISTS student3(
age INT,
name VARCHAR(30) DEFAULT 'SATHWIK'
);

INSERT INTO student3(age)
VALUES
(87),
(77);

select * from student3;

-- primary key
CREATE TABLE student4(
age INT,
rollno INT PRIMARY KEY
);

-- unique + not null
INSERT INTO student4(age,rollno)
VALUES
(20,87),
(21,97);

-- foreign Key

CREATE TABLE course(
rollno INT,
cname VARCHAR(50),
FOREIGN KEY (rollno) REFERENCES student4(rollno)
 );




















