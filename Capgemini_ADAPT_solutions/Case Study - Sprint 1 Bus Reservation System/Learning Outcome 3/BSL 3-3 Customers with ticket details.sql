alter session set current_schema = busservice;
SET heading OFF
/*
 * Enter your query below.
 * Please append a semicolon ";" at the end of the query
 */
select user_details.*, bus_service.*
from user_details, booking_details, bus_service
WHERE booking_details.user_id = user_details.user_id
and booking_details.bus_id = bus_service.bus_id
;