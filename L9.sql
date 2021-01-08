#1
CREATE TABLE Employee(
    code CHAR(4) PRIMARY KEY,
    name VARCHAR(60),
    dob DATE,
    designation VARCHAR(80),
    salary FLOAT
);

INSERT INTO Employee(code, name, dob, designation, salary)
VALUES
('ct01','Jonah','19890-02-02','CTO',190000),
('ce12','Dina','1990-01-12','CEO',185000),
('cl13','Amy','1998-08-02','Clerk',59000),
('au10','Garette','1969-04-20','Auditor',59000);

#2
SELECT * FROM Employee ORDER BY name DESC;

#3
CREATE TABLE Deposit(
    baccno BIGINT,
    branch_name VARCHAR(60),
    amount FLOAT
);

INSERT INTO Deposit(baccno, branch_name, amount)
VALUES
(1990001,'Detroit',290000),
(1990002,'Detroit',291233),
(1990003,'New York',123570),
(1990004,'New York',2239083),
(1990005,'California',100090);

#4
SELECT branch_name,COUNT(baccno),SUM(amount) FROM Deposit 
GROUP BY branch_name;
