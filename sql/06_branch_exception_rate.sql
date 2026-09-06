-- Example branch-level exception analysis
SELECT
    Branch,
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN Approval_Status = 'Pending' THEN 1 ELSE 0 END) AS pending_transactions,
    ROUND(
        100.0 * SUM(CASE WHEN Approval_Status = 'Pending' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS pending_rate_pct
FROM banking_transactions
GROUP BY Branch
ORDER BY pending_rate_pct DESC;
