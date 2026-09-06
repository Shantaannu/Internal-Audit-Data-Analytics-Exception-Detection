SELECT
    Account_ID,
    Amount_EUR,
    Transaction_Type,
    Vendor_ID,
    CAST(Transaction_Date AS DATE) AS Transaction_Date,
    COUNT(*) AS Transaction_Count
FROM banking_transactions
GROUP BY
    Account_ID,
    Amount_EUR,
    Transaction_Type,
    Vendor_ID,
    CAST(Transaction_Date AS DATE)
HAVING COUNT(*) > 1
ORDER BY Transaction_Count DESC;