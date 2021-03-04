alter session set current_schema = busservice;
SET heading OFF
/*
 * Enter your query below.
 * Please append a semicolon ";" at the end of the query
 */
select DISTINCT user_details.*
from user_details, booking_details
WHERE
user_details.user_id = booking_details.user_id
and user_details.user_id
in (select user_id from booking_details having COUNT(booking_id)>2 GROUP by user_id)
;