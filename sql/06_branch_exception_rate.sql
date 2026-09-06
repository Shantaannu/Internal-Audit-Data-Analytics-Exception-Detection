SELECT
    Branch,
    COUNT(*) AS Total_Transactions,
    SUM(Amount_EUR) AS Total_Transaction_Value,
    AVG(Amount_EUR) AS Average_Transaction_Value,
    SUM(
        CASE
            WHEN Approval_Status = 'Pending'
            THEN 1
            ELSE 0
        END
    ) AS Pending_Transactions,
    ROUND(
        100.0 *
        SUM(
            CASE
                WHEN Approval_Status = 'Pending'
                THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS Pending_Rate_Percent
FROM banking_transactions
GROUP BY Branch
ORDER BY Pending_Rate_Percent DESC;