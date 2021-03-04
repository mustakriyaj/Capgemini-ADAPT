alter session set current_schema = busservice;
SET heading OFF
/*
 * Enter your query below.
 * Please append a semicolon ";" at the end of the query
 */
SELECT *
 FROM(
 SELECT UNIQUE ud.user_id, ud.first_name, bs.arr_city, bs.dept_date_time
 FROM user_details ud, booking_details bd, bus_service bs
 WHERE ud.user_id=bd.user_id
 AND bd.bus_id=bs.bus_id
 AND UPPER(bs.arr_city)='MUMBAI'
 ORDER BY ud.user_id)
 WHERE ROWNUM = 1;