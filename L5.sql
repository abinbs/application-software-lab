
CREATE TABLE Class (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50)
);



INSERT INTO Class (`name`) VALUES ("Sheldon"), ("Lenord"), ("Raj");


SELECT * FROM Class;


START TRANSACTION;

INSERT INTO Class (`name`) VALUES ("Jack");
ROLLBACK; 

INSERT INTO Class (`name`) VALUES ("Jack");
COMMIT;

START TRANSACTION;
SAVEPOINT BigBangTheory;
INSERT INTO Class (`name`) VALUES ("BigBang");
ROLLBACK TO BigBangTheory;

COMMIT;
