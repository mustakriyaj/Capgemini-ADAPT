alter session set current_schema = busservice;
SET heading OFF
/*
 * Enter your query below.
 * Please append a semicolon ";" at the end of the query
 */
select * from 
(select ud.user_id , ud.first_name, count(bd.user_id) as total_tickets 
 from user_details ud , booking_details bd ,bus_service bs, seatallocation sa 
 where ud.user_id= bd.user_id 
 and bd.bus_id=bs.bus_id 
 and sa.booking_id=bd.booking_id 
 group by ud.user_id,first_name order by count(bd.user_id)desc, ud.user_id)
 where rownum<=3;