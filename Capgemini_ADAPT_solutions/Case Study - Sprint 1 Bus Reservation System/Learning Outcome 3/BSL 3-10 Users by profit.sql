alter session set current_schema = busservice;
SET heading OFF
/*
 * Enter your query below.
 * Please append a semicolon ";" at the end of the query
 */
select * from
(select u.user_id, u.first_name, sum(cost) as total_cost 
 from user_details u, booking_details b, seatallocation s, bus_service bs 
 where u.user_id = b.user_id 
 and b.booking_id = s.booking_id 
 and bs.bus_id=s.bus_id 
 group by u.user_id, u.first_name order by total_cost desc, u.user_id) 
 where ROWNUM = 1;