BEGIN TRANSACTION;

/* Create a tables */
CREATE TABLE invoices(in_id integer PRIMARY KEY, bill_date date, cust_id integer,
FOREIGN KEY (cust_id)  REFERENCES customers(id));
CREATE TABLE customers(id integer PRIMARY KEY, name text, reff_id integer,
FOREIGN KEY (reff_id)  REFERENCES customers(id));


/* Create few records in this tables */
INSERT INTO invoices VALUES(1,'03.10.2017',6);
INSERT INTO invoices VALUES(2,'06.10.2017',4);
INSERT INTO invoices VALUES(3,'09.12.2018',2);
INSERT INTO invoices VALUES(4,'13.01.2011',1);
INSERT INTO invoices VALUES(5,'15.04.2013',3);
INSERT INTO invoices VALUES(6,'04.05.2015',5);
INSERT INTO invoices VALUES(7,'06.08.2017',3);
INSERT INTO invoices VALUES(8,'03.11.2016',6);


INSERT INTO customers VALUES(1,'Alex',2);
INSERT INTO customers VALUES(2,'Anne',6);
INSERT INTO customers VALUES(3,'Serg',4);
INSERT INTO customers VALUES(4,'Linda',5);
INSERT INTO customers VALUES(5,'Peter',1);
INSERT INTO customers VALUES(6,'Jack',3);

COMMIT;
/*Query */
SELECT in_id, bill_date, a1.name , a2.name
FROM invoices
INNER JOIN customers as a1  ON a1.id = invoices.cust_id
INNER JOIN customers as a2  ON a2.id = a1.reff_id
