alter session set current_schema = busservice;
SET heading OFF
/*
 * Enter your query below.
 * Please append a semicolon ";" at the end of the query
 */
select BUS_NAME,DEP_CITY,ARR_CITY,NO_OF_BOOKINGS
 from BUS_SERVICE,(select BUS_ID,count(*) NO_OF_BOOKINGS 
 from BOOKING_DETAILS group by BUS_ID having count(*)=
 (select max(count(*)) from BOOKING_DETAILS group by BUS_ID))X 
 where BUS_SERVICE.BUS_ID=X.BUS_ID;