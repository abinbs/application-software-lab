#1 
CREATE TABLE Employee(
    code CHAR(6) PRIMARY KEY,
    name VARCHAR(80),
    dob date,
    designation VARCHAR(100),
    salary FLOAT
);

#2
INSERT INTO Employee (code, name, dob, designation, salary)
VALUES
('ce101','Captian Halt','1960-10-05','Captain',50000),
('of102','Terry','1978-11-15','Cheif Officer',45000),
('of201','Jake Perolta','1982-02-06','Inspector',35000),
('as101','Tina','1985-02-05','Office Assistant',25000);

#3
SELECT SUM(salary) FROM Employee WHERE designation='Clerk';

#4
SELECT MAX(salary) FROM Employee;

#5
SELECT AVG(salary) FROM Employee;

#6
SELECT MIN(salary) FROM Employee;

#7
SELECT COUNT(*) FROM Employee;
