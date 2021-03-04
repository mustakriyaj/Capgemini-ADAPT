alter session set current_schema = busservice;
SET heading OFF
/*
 * Enter your query below.
 * Please append a semicolon ";" at the end of the query
 */
SELECT ACCOUNT_NO FROM BANK_SB_ACCOUNT SB
WHERE NOT EXISTS
(SELECT TRANS_NO FROM BANK_TRANSACTION T WHERE SB.ACCOUNT_NO = T.TRANS_ACC_NO);