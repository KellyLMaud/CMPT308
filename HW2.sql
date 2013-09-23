--Kelly Maud
--Homework 2

--1
SELECT city 
FROM agents
WHERE aid IN
	(SELECT aid
	 FROM orders
	 WHERE cid = 'c002')
	 
--2
SELECT DISTINCT pid
FROM orders
WHERE aid IN
	(SELECT aid
	 FROM orders
	 WHERE cid IN
		(SELECT cid
		 FROM customers
		 WHERE city = 'Kyoto'))
order by pid

--3
SELECT name, cid
FROM customers
WHERE cid NOT IN
	(SELECT cid
	 FROM orders
	 WHERE aid = 'a03')	 
	 
--4
SELECT name, cid
FROM customers
WHERE cid IN
	(
	 (SELECT cid
	  FROM orders
	  WHERE pid = 'p01')
	  
	  INTERSECT

	 (SELECT cid
	  FROM orders
	  WHERE pid = 'p07')
	 )
	 
--5

SELECT DISTINCT pid
FROM orders
WHERE cid IN
	(SELECT cid
	 FROM orders
	 WHERE aid = 'a03')
ORDER BY pid	 

--6
SELECT name, discount
FROM customers
WHERE cid IN
	(SELECT DISTINCT cid
	 FROM orders
	 WHERE aid IN
		(SELECT aid
		 FROM agents
		 WHERE city = 'Dallas' 
		    OR city = 'Duluth'))	 
			
--7
SELECT *
FROM customers
WHERE discount IN 
	(SELECT discount
	 FROM customers
	 WHERE city = 'Dallas' 
	    OR city = 'Kyoto')			
	 
	 
	 
	 