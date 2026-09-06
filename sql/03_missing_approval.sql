-- Identify transactions requiring review because approval is pending
SELECT *
FROM banking_transactions
WHERE Approval_Status = 'Pending'
  AND Amount_EUR > 1000;
