alter session set current_schema = busservice;
SET heading OFF
/*
 * Enter your query below.
 * Please append a semicolon ";" at the end of the query
 */
 select *
from(
select s.user_id, c.booking_id, count(*) as total_tickets
from busservice.user_details s,busservice.booking_details c, busservice.seatallocation d
where s.user_id=c.user_id
and c.booking_id=d.booking_id
group by c.user_id, c.booking_id
order by total_tickets desc, s.user_id asc)
where ROWNUM IN (1,2);