
CREATE TABLE Department(
    `code` INT PRIMARY KEY NOT NULL,
    `title` VARCHAR(30),
    `dept_name` VARCHAR(30) UNIQUE NOT NULL,
    `dept_id` INT UNIQUE NOT NULL,
    `salary` INT,
    CHECK (`salary` > 2000 )
);

INSERT INTO Department(`code`, `title`, `dept_name`, `dept_id`,`salary`) 
VALUES (101, "Introduction", "Literature and Arts", 300, 30000);


CREATE TABLE Instructor(
    `name` VARCHAR(50) NOT NULL,
    `code` INT NOT NULL,
    `id` INT PRIMARY KEY DEFAULT 0
);

INSERT INTO Instructor(`name`, `code`)
VALUES ("Jack Ryan", 2255);
