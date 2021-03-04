alter session set current_schema = busservice;
SET heading OFF
/*
 * Enter your query below.
 * Please append a semicolon ";" at the end of the query
 */
select dep_city, arr_city, count(*)
from bus_service
group by dep_city, arr_city
HAVING
count(*) = (select max(count(*)) from bus_services group by dep_city, arr_city)
;