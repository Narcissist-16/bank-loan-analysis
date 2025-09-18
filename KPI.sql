SELECT * FROM financial_loan;

-- TOTAL LOAN APPLICATIONS
SELECT COUNT(id) AS Total_Loan_Applications FROM financial_loan;

-- TOTAL LOAN APPLICATIONS AS MONTH TO DATE
SELECT COUNT(id) AS Total_Loan_Applications FROM financial_loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;

-- TOTAL LOAN APPLICATIONS AS PREVIOUS MONTH TO DATE
SELECT COUNT(id) AS Total_Loan_Applications FROM financial_loan
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;

-- TOTAL FUNDED AMOUNT AS MTD
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM financial_loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;

-- TOTAL FUNDED AMOUNT AS PMTD
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM financial_loan
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;

-- TOTAL AMOUNT RECEIVED
SELECT SUM(total_payment) AS Total_Amount_Received FROM financial_loan;  

-- TOTAL AMOUNT RECEIVED AS MTD
SELECT SUM(total_payment) AS Total_Amount_Received FROM financial_loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;  

-- TOTAL AMOUNT RECEIVED AS PMTD
SELECT SUM(total_payment) AS Total_Amount_Received FROM financial_loan
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;  


-- TOTAL AMOUNT RECEIVED AS PMTD
SELECT SUM(total_payment) AS Total_Amount_Received FROM financial_loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;  

-- AVERAGE INTEREST RATE
SELECT AVG(int_rate)*100 AS Avg_Interest_Rate FROM financial_loan;

-- AVERAGE INTEREST RATE AS MTD
SELECT AVG(int_rate)*100 AS MTD_Avg_Interest_Rate FROM financial_loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;

-- AVERAGE INTEREST RATE AS PMTD
SELECT AVG(int_rate)*100 AS PMTD_Avg_Interest_Rate FROM financial_loan
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;

-- AVERAGE DEBT-TO-INCOME RATIO
SELECT AVG(dti)*100 AS Avg_DTI FROM financial_loan;

-- AVERAGE DEBT-TO-INCOME RATIO AS MTD
SELECT AVG(dti)*100 AS MTD_Avg_DTI FROM financial_loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;

-- AVERAGE DEBT-TO-INCOME RATIO AS PMTD
SELECT AVG(dti)*100 AS PMTD_Avg_DTI FROM financial_loan
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;












