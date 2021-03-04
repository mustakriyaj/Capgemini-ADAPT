alter session set current_schema = busservice;
SET heading OFF
/*
 * Enter your query below.
 * Please append a semicolon ";" at the end of the query
 */
select * from user_details
where user_id not IN
(select user_id from booking_details)
;