alter session set current_schema = busservice;
SET heading OFF
/*
 * Enter your query below.
 * Please append a semicolon ";" at the end of the query
 */
select DEP_CITY, ARR_CITY, count(*) from BUS_SERVICE
group by ARR_CITY, DEP_CITY
having count()>4 and count()<10;