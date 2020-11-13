USE lab;

#1
CREATE TABLE Employee (
	code CHAR(4) NOT NULL,
    name CHAR(10) NOT NULL, 
    designation CHAR(30) NOT NULL, 
    dob DATE NOT NULL,
    salary NUMERIC
);

#2
INSERT INTO Employee (code, name, designation, dob, salary)
VALUES 
("e1", "Eve", "CEO", "1980-4-12", 41250),
("e2","Adam", "HR", "1984-3-22", 38500);

#3
SELECT * FROM Employee;

#4
UPDATE Employee
SET salary = 50000 WHERE code = "e1";

#5
DELETE FROM Employee WHERE code = "e2";
