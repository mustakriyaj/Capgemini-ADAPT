alter session set current_schema = busservice;
SET heading OFF
/*
 * Enter your query below.
 * Please append a semicolon ";" at the end of the query
 */
select * from 
(select d.user_id,d.first_name, count(a.seat_id) as total_tickets 
 from user_details d,booking_details bd,seatallocation a,bus_service bs 
 where d.user_id=bd.user_id 
 and bd.booking_id=a.booking_id 
 and bs.bus_id=bd.bus_id group by d.user_id,d.first_name order by count(a.seat_id) desc) 
 where rownum=1;