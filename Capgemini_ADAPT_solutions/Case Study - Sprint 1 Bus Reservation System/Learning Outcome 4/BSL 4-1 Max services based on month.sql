alter session set current_schema = busservice;
SET heading OFF
/*
 * Enter your query below.
 * Please append a semicolon ";" at the end of the query
 */
SELECT TO_CHAR(DEPT_DATE_TIME,'MON'),COUNT(*) FROM BUS_SERVICE 
GROUP BY TO_CHAR(DEPT_DATE_TIME,'MON') 
HAVING COUNT(OPERATOR) = (SELECT MAX(COUNT (OPERATOR)) FROM BUS_SERVICE GROUP BY TO_CHAR(DEPT_DATE_TIME,'MON'));