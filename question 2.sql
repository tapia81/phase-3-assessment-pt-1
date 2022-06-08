CREATE TABLE orders (
  ord_no INTEGER NOT NULL,
  purch_amt DOUBLE NOT NULL,
  ord_date TEXT NOT NULL,
  customer_id INTEGER NOT NULL,
  salesman_id INTEGER NOT NULL

);

INSERT INTO orders VALUES (70001,150.5, '2012-10-05',3005 ,5002);
INSERT INTO orders VALUES (70009,270.65, '2012-09-10',3001 ,5005);
INSERT INTO orders VALUES (70002,65.26, '2012-10-05',3002 ,5001);
INSERT INTO orders VALUES (70004,110.5, '2012-08-17',3009 ,5003);
INSERT INTO orders VALUES (70007,948.5, '2012-09-10',3005 ,5002);
INSERT INTO orders VALUES (70005,2400.6, '2012-07-27',3007 ,5001);
INSERT INTO orders VALUES (70008,5760, '2012-09-10',3002 ,5001);

SELECT ord_no, ord_date, purch_amt 
FROM orders 
WHERE salesman_id == 5001