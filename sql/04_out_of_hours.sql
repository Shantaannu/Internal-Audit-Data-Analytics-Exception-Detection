SELECT
    Transaction_ID,
    Transaction_Date,
    Account_ID,
    Employee_ID,
    Branch,
    Transaction_Type,
    Amount_EUR,
    Channel
FROM banking_transactions
WHERE EXTRACT(HOUR FROM Transaction_Date) < 8
   OR EXTRACT(HOUR FROM Transaction_Date) >= 18
ORDER BY Transaction_Date;