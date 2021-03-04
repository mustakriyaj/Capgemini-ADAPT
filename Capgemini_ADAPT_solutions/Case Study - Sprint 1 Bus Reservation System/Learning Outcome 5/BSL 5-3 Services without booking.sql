alter session set current_schema = busservice;
SET heading OFF
/*
 * Enter your query below.
 * Please append a semicolon ";" at the end of the query
 */
SELECT UNIQUE bs.*
 FROM bus_service bs, booking_details bd 
 WHERE NOT EXISTS 
    (SELECT bd.bus_id
    FROM booking_details bd
    WHERE bs.bus_id=bd.bus_id)
ORDER BY bs.bus_id;