-- Identify transactions where the initiator also approved the transaction
SELECT *
FROM banking_transactions
WHERE Employee_ID = REPLACE(Approver_ID, 'APR', 'EMP');
