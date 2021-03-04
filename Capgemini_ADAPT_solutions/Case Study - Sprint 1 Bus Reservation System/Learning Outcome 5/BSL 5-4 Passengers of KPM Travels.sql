alter session set current_schema = busservice;
SET heading OFF
/*
 * Enter your query below.
 * Please append a semicolon ";" at the end of the query
 */
SELECT * FROM USER_DETAILS U 
WHERE U.USER_ID IN 
(SELECT b.USER_ID FROM BOOKING_DETAILS B 
 WHERE B.BUS_ID IN (SELECT BUS_ID FROM BUS_SERVICE WHERE OPERATOR = 'KPM'));