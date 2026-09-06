SELECT
    Transaction_ID,
    Transaction_Date,
    Account_ID,
    Employee_ID,
    Branch,
    Transaction_Type,
    Amount_EUR,
    Approval_Status,
    Channel
FROM banking_transactions
WHERE Amount_EUR >= 10000
ORDER BY Amount_EUR DESC;