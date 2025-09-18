USE bankloandb;

-- BANK LOAN MONTHLY REPORT
SELECT 
    DATE(MONTH,issue_date),
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM financial_loan
GROUP BY  DATE(MONTH,issue_date)
ORDER BY  DATE(MONTH,issue_date);

-- STATE WISE REPORT
SELECT 
   address_state,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM financial_loan
GROUP BY  address_state
ORDER BY  address_state;

-- TERM WISE REPORTS
SELECT 
   term AS Term,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM financial_loan
GROUP BY  term
ORDER BY  term;

-- EMPLOYEE LENGTH DATA
SELECT 
	emp_length AS Employee_Length,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM financial_loan
GROUP BY  emp_length
ORDER BY  emp_length;

-- PURPOSE REPORTS
SELECT 
	purpose AS PURPOSE,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM financial_loan
GROUP BY  purpose
ORDER BY  purpose;

-- HOME OWNERSHIP REPORTS
SELECT 
	home_ownership AS Home_Ownership,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM financial_loan
GROUP BY  home_ownership
ORDER BY  home_ownership;



