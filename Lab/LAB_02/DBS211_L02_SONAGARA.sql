--******************************
-- Name: Meet Hitesh Sonagara
-- ID: 122208226
-- Date: 27-05-2024
-- Purpose: Lab 02 DBS211
--******************************

-- Q1 SOLUTION --
SELECT officecode,
        city, state,
        country,
        phone 
    FROM offices;

-- Q2 SOLUTION --
SELECT employeenumber,
        firstname,
        lastname,
        extension 
    FROM employees 
    WHERE officecode=1 
    ORDER BY employeenumber;

-- Q3 SOLUTION --
SELECT customernumber,
        customername,
        contactfirstname,
        contactlastname,
        phone 
    FROM customers
    WHERE city='Paris'
    ORDER BY customernumber;

--Q4 SOLUTION –-
SELECT customernumber AS "Customer Number",
        customername AS "Customer Name",
        ((contactlastname) || ',' || (contactfirstname))AS "Contact Name",
        phone AS "Phone"
    FROM customers
    WHERE country = 'Canada'
    ORDER BY customername;

--Q5 SOLUTION –-
SELECT DISTINCT customernumber
    FROM payments 
    WHERE amount IS NOT NULL
    ORDER BY customernumber;


-- Q6 SOLUTION –-
SELECT customernumber
        checknumber,
        amount
    FROM payments
    WHERE amount
    NOT BETWEEN 1500 AND 120000
    ORDER BY amount DESC;

--Q7 SOLUTION –-
SELECT ordernumber,
        orderdate,
        status,
        customernumber
    FROM orders
    WHERE status='Cancelled'
    ORDER BY orderdate;

--Q8 SOLUTION –-
SELECT productcode,
        productname,
        buyprice,
        msrp,
        (msrp-buyprice) AS markup,
        round((100*(msrp-buyprice)/buyprice),1) AS percmarkup
    FROM products
    WHERE round((100*(msrp-buyprice)/buyprice),1) > 140
    ORDER BY percmarkup;

--Q9 SOLUTION –-
SELECT productcode,
        productname,
        quantityinstock
    FROM products
    WHERE LOWER(productname)LIKE '%co%'
    ORDER BY quantityinstock;

--Q10 SOLUTION –-
SELECT customernumber,
        contactfirstname,
        contactlastname
    FROM customers
    WHERE UPPER(contactfirstname)LIKE 'S%E%'
    ORDER BY customernumber;