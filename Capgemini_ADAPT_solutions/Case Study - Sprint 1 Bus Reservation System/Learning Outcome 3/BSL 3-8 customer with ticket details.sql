alter session set current_schema = busservice;
SET heading OFF
/*
 * Enter your query below.
 * Please append a semicolon ";" at the end of the query
 */
select p.* , q.* 
from user_details p , bus_service q, booking_details r 
where p.user_id=r.user_id(+) and r.bus_id=q.bus_id(+);