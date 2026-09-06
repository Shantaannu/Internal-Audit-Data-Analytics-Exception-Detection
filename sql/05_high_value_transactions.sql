-- Identify high-value transactions for audit review
SELECT *
FROM banking_transactions
WHERE Amount_EUR >= 10000
ORDER BY Amount_EUR DESC;
