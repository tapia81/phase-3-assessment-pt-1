CREATE TABLE salesman (
  salesman_id INTEGER NOT NULL,
  salesman_name VARCHAR(45) NOT NULL,
  city VARCHAR(45) NOT NULL,
  commission DOUBLE NOT NULL
);

CREATE TABLE customer (
  customer_id INTEGER NOT NULL,
  cust_name VARCHAR(45) NOT NULL,
  city VARCHAR(45) NOT NULL,
  grade INTEGER NOT NULL,
  salesman_id INTEGER NOT NULL
);

INSERT INTO salesman VALUES (5001, 'James Hoog', 'New York', 0.15);
INSERT INTO salesman VALUES (5002, 'Nail Knite', 'Paris', 0.13);
INSERT INTO salesman VALUES (5005, 'Pit Alex', 'London', 0.11);
INSERT INTO salesman VALUES (5006, 'Mc Lyon', 'Paris', 0.14);
INSERT INTO salesman VALUES (5007, 'Paul Adam', 'Rome', 0.13);
INSERT INTO salesman VALUES (5003, 'Lauson Hen', 'San Jose', 0.12);

INSERT INTO customer VALUES (3002, 'Nick Rimando', 'New York', 100, 5001);
INSERT INTO customer VALUES (3007, 'Brad Davis', 'New York', 200, 5001);
INSERT INTO customer VALUES (3005, 'Graham Zusi', 'California', 200, 5002);
INSERT INTO customer VALUES (3008, 'Julian Green', 'London', 300, 5002);
INSERT INTO customer VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006);
INSERT INTO customer VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003);
INSERT INTO customer VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007);

SELECT salesman.salesman_name,
       customer.cust_name,
       salesman.city
  FROM salesman
  INNER JOIN customer 
    ON salesman.city == customer.city;