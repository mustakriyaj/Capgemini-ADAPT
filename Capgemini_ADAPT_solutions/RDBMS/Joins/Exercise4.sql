alter session set current_schema = busservice;
SET heading OFF
/*
 * Enter your query below.
 * Please append a semicolon ";" at the end of the query
 */
SELECT CUST_ID, CUST_FNAME
FROM BANK_CUSTOMER B
WHERE NOT EXISTS
(SELECT CUST_ID, CUST_FNAME
FROM BANK_CUST_CONTACT C
WHERE B.CUST_ID = C.CUST_ID AND C.CONTACT_TYPE = 'OFFICE') AND B.CUST_TYPE = 'IND';