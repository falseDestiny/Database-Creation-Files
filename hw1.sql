--Shane Chamberlain
--CPSC350
--Section2

-- CS350 HW1

-- Question 1

create database hw1;

\c hw1

CREATE TABLE programmer (EmpNo varchar(3), Project varchar(3), TaskNo integer, Last_Name varchar(25), First_Name varchar(25), Hire_Date date, Language varchar(15), Clearance varchar(20));


-- Question 2

Insert into programmer values ('201', 'XYZ', 52, 'Campbell', 'Jeanne', '1/1/2013', 'Cobol', 'Ultra Secret');
Insert into programmer values ('152', 'KOO', 13, 'Davies', 'Stephen', '8/3/2001', 'Fortran', 'Secret');
Insert into programmer values ('253', 'SYL', 29, 'Finlayson', 'Ian', '8/12/2012', 'Forth', 'Top Secret');
Insert into programmer values ('192', 'DAT', 93, 'Marshall', 'Andrew', '8/3/2014', 'Algol', 'Top Secret');
Insert into programmer values ('390', 'SCR', 13, 'Anewalt', 'Karen', '5/21/1999', 'Pascal', 'Secret');
Insert into programmer values ('111', 'XYZ', 12, 'Ann', 'Jeanne', '5/4/1998', 'Forth', 'Ultra Secret');
Insert into programmer values ('123', 'XFI', 13, 'Scully', 'Dana', '7/30/2000', 'Forth', 'Ultra Secret');

-- Question 3

--a:	
select First_Name, Last_Name, Clearance, Hire_Date from programmer;
--b:	
select First_Name, Last_Name, Project, Language from programmer Where Language='Forth';
--c:	
select First_Name, Last_Name, Project, Language from programmer Where Language='Cobol' or Language='Fortran';
--d:	
select First_Name, Last_Name, Clearance, Language from programmer Where Language='Forth' and Clearance='Ultra Secret';
--e:	
select * from programmer where Last_Name='Davies' and First_Name='Stephen';

-- Question 4

\d programmer

-- Question 5

CREATE TABLE books (ISBN varchar(13), Title varchar(35), Author_Last_Name varchar(15), Author_First_Name varchar(15), Pub_Date varchar(4), Publisher varchar(15), pages integer);

-- Question 6

Insert into books values ('9781614293163', 'Sit Down and Shut Up', 'Warner', 'Brad', '2015', 'Wisdom', 232);
Insert into books values ('9781590305751', 'Method of No-Method', 'Yen', 'Sheng', '2008', 'Shambhala', 114);
Insert into books values ('9781590306215', 'Shattering the Great Doubt', 'Yen', 'Sheng',  '2009', 'Shambhala', 208);
Insert into books values ('9781750623295', 'Compass of Zen', 'Sahn', 'Seung', 'Null', 'Shambhala', 394);
Insert into books values ('9780861713943', 'Art of Just Sitting', 'Loori', 'John', '2002', 'Wisdom', 256);
Insert into books values ('9788129118332', 'Essential Dogen', 'Tanahashi', 'Kazuaki', '2013', 'Shambhala', 224);
Insert into books values ('9781419638206', 'Shobogenzo', 'Nishijima', 'Gudo', '2006', 'BookSurge', 334);
Insert into books values ('9780596526849', 'Head First SQL', 'OÕBeighley', 'Lynn', 'Null', 'OÕReilly', 610);

-- Question 7

--a:	
SELECT Title FROM Books WHERE Title LIKE 'S%';   
--b:	
SELECT Title,  Author_First_Name, Author_Last_Name, Pages FROM Books WHERE Pages >= 200 and Pages <= 300;
--c:	
SELECT Title, Publisher FROM books WHERE Publisher != 'Shambhala';
--d:	
select title from books where title like '%o%';
--e:	
select title from books where author_last_name = 'OÕBeighley';
--f:	
SELECT Title, author_first_name, author_last_name FROM books WHERE Pub_Date='Null';
--g:	
SELECT Title, Publisher FROM books WHERE Publisher!='Shambhala' and Publisher!='Wisdom' and Publisher!='OÕReilly';

-- Question 8

CREATE TABLE movies (Movie varchar(35) NOT NULL DEFAULT '', boxoffice dec(4,1), tmeter integer, rating varchar(6), mlength integer, genre varchar(35) NOT NULL, released date);

-- Question 9

Insert into movies values ('Paddington', '39.9', 98, 'PG', 95, 'Comedy', '2015-01-09');
Insert into movies values ('The Wedding Ringer', '39.4', 33, 'R', 101, 'action/science fiction/fantasy', '2015-01-16');
Insert into movies values ('Guardians of the Galaxy', '333.2', 91, 'PG-13', 121, 'Comedy', '2014-08-14');
Insert into movies values ('A Body Next Door',' 14.9', 13, 'R', NULL, 'mystery', '2015-01-23');
Insert into movies values ('Mocking Jay Part 1', '333.0', 65, 'PG', 125, 'drama/action/science fiction', '2014-11-21');
Insert into movies values ('Intersteller', '186.4', 72, 'PG', 169, 'action/science fiction/fantasy', '2014-11-07');
Insert into movies values ('Live, Die, Repeat', '100.1', 90, 'PG', 113, 'drama/science fiction', NULL);
Insert into movies values ('How to Train Your Dragon 2', '177.0', 92, 'PG', 105, 'childrens', NULL);
Insert into movies values ('American Sniper', ' 217.3', 73, 'R', 134, 'drama/action', '2015-01-16');
Insert into movies values ('Gone Girl', '167.6', 88, 'R', 145, 'mystery/drama', '2014-10-13');
Insert into movies values ('Blackhat', '167.6', 30, 'R', NULL,'drama/action', '2015-01-15');
Insert into movies values ('Whiplash', ' 7.1', 95, 'R', 105, 'drama', '2014-10-10');

-- Question 10
--a
SELECT movie, rating FROM movies WHERE genre LIKE '%science fiction%';
--b
SELECT movie, genre, tmeter FROM movies WHERE tmeter > 80;
--c
SELECT movie, released FROM movies WHERE released is not null;
--d
SELECT movie FROM movies WHERE movie LIKE 'A%' or movie LIKE 'E%' or movie LIKE 'I%' or movie LIKE 'O%' or movie LIKE 'U%';
