alter session set current_schema = busservice;
SET heading OFF
/*
 * Enter your query below.
 * Please append a semicolon ";" at the end of the query
 */
SELECT bd.*
FROM booking_details bd, bus_service bs 
WHERE bd.bus_id=bs.bus_id
AND UPPER(bs.bus_name) LIKE '%SLEEPER%';