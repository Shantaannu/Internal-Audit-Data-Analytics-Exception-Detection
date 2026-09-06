# Internal Audit Data Analytics & Exception Detection

## Objective
Use banking transaction data to simulate internal audit testing, identify control exceptions, investigate unusual activity, and communicate findings.

## Dataset
- banking_transactions.csv: 60,450 transactions including intentionally injected audit exceptions
- approval_thresholds.csv: example approval rules
- employee_master.csv: employee reference data
- vendor_master.csv: vendor reference data

## Suggested audit tests
1. Duplicate transactions
2. Self-approval / segregation-of-duties breaches
3. Missing or pending approvals
4. High-value transactions
5. Out-of-hours transactions
6. Branch-level exception rates
7. Vendor and employee concentration
8. Monthly exception trends

## Suggested workflow
Raw CSV -> SQL testing -> Python investigation -> processed exception dataset -> Excel/Power BI reporting

## Important
The dataset is synthetic and intended for portfolio/interview demonstration. Do not represent it as real AIB data.
