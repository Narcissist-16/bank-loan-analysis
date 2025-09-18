SELECT * FROM financial_loan;

-- DASHBOARD 1 
SELECT
    loan_status,
    COUNT(id) AS Total_Loan_Applications,
    SUM(total_payment) AS Total_Amount_Received,
    SUM(loan_amount) AS Total_Funded_Amount,
    AVG(int_rate * 100) AS Interest_Rate,
    AVG(dti * 100) AS DTI
FROM financial_loan
GROUP BY loan_status;

-- DASHBOARD MTD FUNDED AND RECEIVED
SELECT
    loan_status,
    SUM(total_payment) AS MTD_Total_Amount_Received,
    SUM(loan_amount) AS MTD_Total_Funded_Amount
    FROM financial_loan
WHERE MONTH(issue_date) = 12
GROUP BY loan_status;

 