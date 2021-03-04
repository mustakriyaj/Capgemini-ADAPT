alter session set current_schema = busservice;
SET heading OFF
/*
 * Enter your query below.
 * Please append a semicolon ";" at the end of the query
 */
 SELECT * FROM bus_service WHERE
 arr_date_time >= dept_date_time + interval '1' day;