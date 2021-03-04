alter session set current_schema = busservice;
SET heading OFF
/*
 * Enter your query below.
 * Please append a semicolon ";" at the end of the query
 */
SELECT * 
FROM BANK_EMPLOYEE E
WHERE NOT EXISTS (SELECT BANK_EMP_ID FROM BANK_TRANSACTION T 
WHERE E.BANK_EMP_ID = T.BANK_EMP_ID AND T.TRANS_DESC IS NOT NULL)
AND (DESIGNATION <> 'ATTENDER');