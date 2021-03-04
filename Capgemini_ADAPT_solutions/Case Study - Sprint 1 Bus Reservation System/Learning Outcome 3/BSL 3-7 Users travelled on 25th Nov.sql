alter session set current_schema = busservice;
SET heading OFF
/*
 * Enter your query below.
 * Please append a semicolon ";" at the end of the query
 */
select user_details.*
from user_details, booking_details, bus_service
WHERE bus_service.bus_id = booking_details.bus_id
and user_details.user_id = booking_details.user_id
and booking_details.bus_id IN
(select bus_id from bus_service where to_char(dept_date_time, 'DD-MM-YYYY') = '25-11-2020')
;