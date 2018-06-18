BEGIN TRANSACTION;

/* Create a tables */
CREATE TABLE depts(id integer PRIMARY KEY, dept_name text);
CREATE TABLE emps(emp_id integer PRIMARY KEY, dept_id integer,
FOREIGN KEY (dept_id)  REFERENCES depts(id));



/* Create few records in this tables */
INSERT INTO depts VALUES(1,'Miggle');
INSERT INTO depts VALUES(2,'Viggle');
INSERT INTO depts VALUES(3,'Genuine');
INSERT INTO depts VALUES(4,'Big');
INSERT INTO depts VALUES(5,'Noners');

INSERT INTO emps VALUES(1,2);
INSERT INTO emps VALUES(2,2);
INSERT INTO emps VALUES(3,5);
INSERT INTO emps VALUES(4,2);
INSERT INTO emps VALUES(5,1);


/*Query*/


SELECT dept_name, COUNT(*) emp_id  FROM emps
INNER JOIN depts  ON id = emps.dept_id
GROUP BY emps.dept_id
