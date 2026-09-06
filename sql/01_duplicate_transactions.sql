-- Identify likely duplicate transactions
SELECT
    Account_ID, Transaction_Date, Amount_EUR, Transaction_Type, Vendor_ID,
    COUNT(*) AS transaction_count
FROM banking_transactions
GROUP BY Account_ID, Transaction_Date, Amount_EUR, Transaction_Type, Vendor_ID
HAVING COUNT(*) > 1
ORDER BY transaction_count DESC;
