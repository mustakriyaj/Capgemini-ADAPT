alter session set current_schema=bank;
SET heading OFF;

SELECT MIN(INSTALLMENT_AMT),
MAX(INSTALLMENT_AMT)
FROM BANK_RD_ACCOUNT
WHERE TO_CHAR(RD_START_DT,'YYYY') = '2008';