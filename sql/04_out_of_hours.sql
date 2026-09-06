-- Flag transactions outside normal business hours (08:00-18:00)
SELECT *,
       EXTRACT(HOUR FROM Transaction_Date) AS transaction_hour
FROM banking_transactions
WHERE EXTRACT(HOUR FROM Transaction_Date) < 8
   OR EXTRACT(HOUR FROM Transaction_Date) >= 18;
