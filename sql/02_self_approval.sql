SELECT
    Transaction_ID,
    Transaction_Date,
    Account_ID,
    Employee_ID,
    Approver_ID,
    Amount_EUR,
    Transaction_Type,
    Branch
FROM banking_transactions
WHERE Employee_ID = REPLACE(Approver_ID, 'APR', 'EMP')
ORDER BY Amount_EUR DESC;