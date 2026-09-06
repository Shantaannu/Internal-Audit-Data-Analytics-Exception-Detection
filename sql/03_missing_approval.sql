SELECT
    t.Transaction_ID,
    t.Transaction_Date,
    t.Transaction_Type,
    t.Amount_EUR,
    t.Approval_Status,
    t.Employee_ID,
    t.Approver_ID,
    t.Branch,
    a.Approval_Required_Above_EUR,
    a.Required_Approvals
FROM banking_transactions t
JOIN approval_thresholds a
    ON t.Transaction_Type = a.Transaction_Type
WHERE t.Amount_EUR > a.Approval_Required_Above_EUR
  AND t.Approval_Status = 'Pending'
ORDER BY t.Amount_EUR DESC;