
CREATE TABLE store(
	    order_no int primary key AUTO_INCREMENT,
	    code varchar(10) not null,
	    item varchar(30) not null,
	    quantity int default 0,
	    price float,
	    discount int default 0,
	    mrp float not null
);


INSERT INTO store(code,item,quantity,price,discount,mrp)
VALUES 
("a12ps", "PES 2020", 14, 3000, 200, 2600),
("a42sl", "Starlink", 12, 9000, 1000, 7999),
("a12cp", "Cyberpunk 2077", 10, 4000, 0, 4200);


#cSELECT * FROM store; 


SELECT MOD(price,9) FROM store;


SELECT price,POWER(price,2) FROM store;


SELECT ROUND(mrp DIV 7) FROM store;
