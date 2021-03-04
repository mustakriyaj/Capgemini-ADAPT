alter session set current_schema = busservice;
SET heading OFF
/*
 * Enter your query below.
 * Please append a semicolon ";" at the end of the query
 */
select * from
(SELECT C.USER_ID, C.FIRST_NAME,SUM(S.COST) AS TOTAL_COST
FROM busservice.USER_DETAILS C, busservice.BOOKING_DETAILS D, busservice.BUS_SERVICE S, busservice.seatallocation a
WHERE C.USER_ID=D.USER_ID
and d.booking_id=a.booking_id
AND a.BUS_ID=S.BUS_ID
GROUP BY C.USER_ID, C.FIRST_NAME
ORDER BY TOTAL_COST DESC)
where ROWNUM IN (1,2);