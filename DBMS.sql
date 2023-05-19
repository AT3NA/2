-- Create the Member table
CREATE TABLE Member (
    Member_Id INT PRIMARY KEY,
    Member_Name VARCHAR(50) NOT NULL,
    Member_Address VARCHAR(50),
    Acc_Open_Date DATE,
    Membership_Type VARCHAR(20),
    Fees_Paid NUMBER(4),
    Max_Books_Allowed NUMBER(2),
    Penalty_Amount NUMBER(7,2),
    CONSTRAINT CHK_Membership_Type CHECK (Membership_Type IN ('Lifetime', 'Annual', 'Half Yearly', 'Quarterly')),
    CONSTRAINT CHK_Max_Books_Allowed CHECK (Max_Books_Allowed < 7),
    CONSTRAINT CHK_Penalty_Amount CHECK (Penalty_Amount <= 1000)
);




-- Create the Books table
CREATE TABLE Books (
    Book_No NUMBER(6) PRIMARY KEY,
    Book_Name VARCHAR2(30),
    Author_Name VARCHAR2(30),
    Cost NUMBER(7,2),
    Category CHAR(10)
);


-- Create the Issue table
CREATE TABLE Issue (
  Lib_Issue_Id NUMBER(4),
  Book_No NUMBER(6),
  Member_Id NUMBER(5),
  Issue_Date DATE,
  Return_Date DATE,
  CONSTRAINT PK_Issue PRIMARY KEY (Lib_Issue_Id),
  CONSTRAINT FK_Issue_Books FOREIGN KEY (Book_No) REFERENCES Books(Book_No),
  CONSTRAINT FK_Issue_Member FOREIGN KEY (Member_Id) REFERENCES Member(Member_Id)
);






-- Insert data into the Member table
INSERT INTO Member (Member_Id, Member_Name, Member_Address, Acc_Open_Date, Membership_Type, Fees_Paid, Max_Books_Allowed, Penalty_Amount)
VALUES (1, 'Sayantan Sinha', 'Pune', TO_DATE('10-DEC-10', 'DD-MON-YY'), 'Lifetime', 2000, 6, 50);

INSERT INTO Member (Member_Id, Member_Name, Member_Address, Acc_Open_Date, Membership_Type, Fees_Paid, Max_Books_Allowed, Penalty_Amount)
VALUES (2, 'Abhirup Sarkar', 'Kolkata', TO_DATE('19-JAN-11', 'DD-MON-YY'), 'Annual', 1400, 3, 0);

INSERT INTO Member (Member_Id, Member_Name, Member_Address, Acc_Open_Date, Membership_Type, Fees_Paid, Max_Books_Allowed, Penalty_Amount)
VALUES (3, 'Ritesh Bhuniya', 'Gujarat', TO_DATE('20-FEB-11', 'DD-MON-YY'), 'Quarterly', 350, 2, 100);

INSERT INTO Member (Member_Id, Member_Name, Member_Address, Acc_Open_Date, Membership_Type, Fees_Paid, Max_Books_Allowed, Penalty_Amount)
VALUES (4, 'Paresh Sen', 'Tripura', TO_DATE('21-MAR-11', 'DD-MON-YY'), 'Half yearly', 700, 1, 200);

INSERT INTO Member (Member_Id, Member_Name, Member_Address, Acc_Open_Date, Membership_Type, Fees_Paid, Max_Books_Allowed, Penalty_Amount)
VALUES (5, 'Sohini Haldar', 'Birbhum', TO_DATE('11-APR-11', 'DD-MON-YY'), 'Lifetime', 2000, 6, 10);

INSERT INTO Member (Member_Id, Member_Name, Member_Address, Acc_Open_Date, Membership_Type, Fees_Paid, Max_Books_Allowed, Penalty_Amount)
VALUES (6, 'Suparna Biswas', 'Kolkata', TO_DATE('12-APR-11', 'DD-MON-YY'), 'Half Yearly', 700, 1, 0);

INSERT INTO Member (Member_Id, Member_Name, Member_Address, Acc_Open_Date, Membership_Type, Fees_Paid, Max_Books_Allowed, Penalty_Amount)
VALUES (7, 'Suranjana Basu', 'Purulia', TO_DATE('30-JUN-11', 'DD-MON-YY'), 'Annual', 1400, 3, 50);

INSERT INTO Member (Member_Id, Member_Name, Member_Address, Acc_Open_Date, Membership_Type, Fees_Paid, Max_Books_Allowed, Penalty_Amount)
VALUES (8, 'Arpita Roy', 'Kolkata', TO_DATE('31-JUL-11', 'DD-MON-YY'), 'Half yearly', 700, 1, 0);



-- Insert data into the Books table
INSERT INTO Books (Book_No, Book_Name, Author_Name, Cost, Category)
VALUES (1, 'Book A', 'Author X', 1000, 'Science');

INSERT INTO Books (Book_No, Book_Name, Author_Name, Cost, Category)
VALUES (2, 'Book B', 'Author Y', 800, 'Fiction');

INSERT INTO Books (Book_No, Book_Name, Author_Name, Cost, Category)
VALUES (3, 'Book C', 'Author Z', 500, 'Science');

-- and so on for the remaining books
select * from Member;

delete from Books;


-- Insert data into the Books table
INSERT INTO Books (Book_No, Book_Name, Author_Name, Cost, Category)
VALUES (101, 'Let us C', 'Denis Ritchie', 450, 'Others');

INSERT INTO Books (Book_No, Book_Name, Author_Name, Cost, Category)
VALUES (102, 'Oracle – Complete Ref', 'Loni', 550, 'Database');

INSERT INTO Books (Book_No, Book_Name, Author_Name, Cost, Category)
VALUES (103, 'Visual Basic 10', 'BPB', 700, 'Others');

INSERT INTO Books (Book_No, Book_Name, Author_Name, Cost, Category)
VALUES (104, 'Mastering SQL', 'Loni', 450, 'Database');

INSERT INTO Books (Book_No, Book_Name, Author_Name, Cost, Category)
VALUES (105, 'PL SQL-Ref', 'Scott Urman', 750, 'Database');

INSERT INTO Books (Book_No, Book_Name, Author_Name, Cost, Category)
VALUES (106, 'UNIX', 'Sumitava Das', 300, 'System');

INSERT INTO Books (Book_No, Book_Name, Author_Name, Cost, Category)
VALUES (107, 'Optics', 'Ghatak', 600, 'Science');

INSERT INTO Books (Book_No, Book_Name, Author_Name, Cost, Category)
VALUES (108, 'Data Structure', 'G.S. Baluja', 350, 'Others');


select *  from Books;




-- Insert data into the Issue table
INSERT INTO Issue (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date)
VALUES (7001, 101, 1, TO_DATE('10-JAN-11', 'DD-MON-YY'), TO_DATE('17-JAN-11', 'DD-MON-YY'));

INSERT INTO Issue (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date)
VALUES (7002, 102, 2, TO_DATE('25-JAN-11', 'DD-MON-YY'), TO_DATE('01-FEB-11', 'DD-MON-YY'));

INSERT INTO Issue (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date)
VALUES (7003, 104, 1, TO_DATE('01-FEB-11', 'DD-MON-YY'), TO_DATE('08-FEB-11', 'DD-MON-YY'));

INSERT INTO Issue (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date)
VALUES (7004, 104, 2, TO_DATE('15-MAR-11', 'DD-MON-YY'), TO_DATE('22-MAR-11', 'DD-MON-YY'));


select * from Issue;

--Assignment 2


--1
SELECT Book_Name, Cost
FROM Books
WHERE Cost = (SELECT MAX(Cost) FROM Books);

--2
SELECT MIN(Cost) AS MinimumCost, AVG(Cost) AS AverageCost, SUM(Cost) AS TotalCost
FROM Books;


--3
SELECT m.Member_Id, m.Member_Name
FROM Member m
JOIN Issue i ON m.Member_Id = i.Member_Id
WHERE i.Issue_Date BETWEEN TO_DATE('26-JAN-11', 'DD-MON-YY') AND TO_DATE('14-APR-11', 'DD-MON-YY');


--4

SELECT Book_Name, Author_Name, Category
FROM Books
WHERE Category != 'Others';


--5

SELECT Book_Name, Author_Name
FROM Books
WHERE SUBSTR(Author_Name, 5, 1) = 't';

--6
SELECT COUNT(*) AS TotalBooks
FROM Books
WHERE Cost > 350;

--7
SELECT COUNT(DISTINCT Author_Name) AS Total_Authors
FROM Books;


--8.a

SELECT ABS(-167) AS AbsoluteValue FROM dual;

--8.b
SELECT POWER(8, 6) AS PowerValue FROM dual;

--8.c
SELECT ROUND(134.56789, 2) AS RoundedValue FROM dual;

--8.d
SELECT SQRT(144) AS SquareRootValue FROM dual;


--8.e
SELECT FLOOR(13.15) AS FloorValue, CEIL(13.15) AS CeilingValue FROM dual;

--9
SELECT EXTRACT(YEAR FROM SYSDATE) AS CurrentYear,
       EXTRACT(MONTH FROM SYSDATE) AS CurrentMonth,
       EXTRACT(DAY FROM SYSDATE) AS CurrentDay
FROM dual;

--10
SELECT GREATEST(4, 5, 17) AS GreatestValue
FROM dual;

--11
SELECT LEAST('4', '5', '17') AS LeastValue
FROM dual;

--12
SELECT SUBSTR('INFOSYS', 3, 4) AS ExtractedLetters
FROM dual;


--13
SELECT ASCII('a') AS ASCII_Value FROM dual;
SELECT ASCII('s') AS ASCII_Value FROM dual;


--14

SELECT LENGTH('INFOSYS') AS Word_Length FROM dual;

SELECT REPLACE('INFOSYS', 'S', 'T') AS Modified_Word FROM dual;


--15

SELECT Member_Name, Member_Address
FROM Member
WHERE Member_Address = 'Kolkata';


--16
SELECT Book_Name
FROM Books
WHERE Cost BETWEEN 300 AND 500;


--17



SELECT Member_Name
FROM Member
WHERE Membership_Type = 'Half Yearly';


--18

SELECT Member_Name
FROM Member
WHERE EXTRACT(YEAR FROM Acc_Open_Date) = 2011;

--19

SELECT m.Penalty_Amount
FROM Member m
JOIN Issue i ON m.Member_Id = i.Member_Id
JOIN Books b ON i.Book_No = b.Book_No
WHERE b.Book_Name = 'Let us C';

--20
SELECT m.Max_Books_Allowed
FROM Member m
JOIN Issue i ON m.Member_Id = i.Member_Id
WHERE EXTRACT(MONTH FROM i.Issue_Date) = 1;


--21

SELECT member.Member_id
FROM Member,issue minus 
    SELECT issue.Member_id 
    FROM Issue,member

--22
SELECT Book_Name, Category
FROM Books
WHERE Cost IS NULL;


--23
SELECT Book_Name, Author_Name, Cost
FROM Books
WHERE Author_Name = 'Loni' AND Cost < 600;


--24
SELECT i.Lib_Issue_Id, b.Book_Name, m.Member_Name, i.Issue_Date
FROM Issue i
JOIN Books b ON i.Book_No = b.Book_No
JOIN Member m ON i.Member_Id = m.Member_Id
WHERE i.Return_Date IS NULL;



--25

SELECT Book_Name, Author_Name, Category
FROM Books
WHERE Category IN ('Science', 'Database');

--26


SELECT Member_Name, Penalty_Amount
FROM Member
ORDER BY Penalty_Amount DESC;

--27
SELECT Book_Name, Category, Cost
FROM Books
ORDER BY Category ASC, Cost DESC;


--28
SELECT Book_Name, Author_Name, Category
FROM Books
WHERE Book_Name LIKE '%SQL%';


--29

SELECT Member_Name, Member_Address
FROM Member
WHERE Member_Name LIKE 'S%';

--30

SELECT Member_Name, Member_Address
FROM Member
WHERE ((Member_Name LIKE '%S%' OR Member_Name LIKE '%a%') AND Member_Name LIKE '%t%');


--31

SELECT INITCAP(Book_Name) AS Book_Name, UPPER(Author_Name) AS Author_Name
FROM Books
ORDER BY Book_Name DESC;



--NOT FOR YOU BEACH. STAY AWAY IDIOT
