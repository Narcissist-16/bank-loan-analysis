SELECT loan_status FROM financial_loan;

-- GOOD LOANS APPLICATION PERCENTAGE
SELECT 
	(COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END)*100)
    /
    COUNT(id) AS Good_loan_percentage
    FROM financial_loan;
    
    -- GOOD LOAN APPLICATIONS
    SELECT COUNT(id) AS Good_Loan_Applications FROM financial_loan
    WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'; 
    
    -- GOOD LOAN FUNDED AMOUNT
    SELECT SUM(loan_amount) AS Good_Loan_Funded_Amount FROM financial_loan
    WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'; 
    
        -- GOOD LOAN TOTAL RECIEVED AMOUNT
    SELECT SUM(total_payment) AS Good_Loan_Recieced_Amount FROM financial_loan
    WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'; 
    
    -- BAD LOAN PERCENTAGE
    SELECT 
        (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END)*100)
        /
        COUNT(id) AS Bad_Loan_Percentage
	FROM financial_loan;
    
    -- BAD LOAN APPLICATIONS
    SELECT COUNT(id) AS Bad_Loan_Applications FROM financial_loan
    WHERE loan_status = 'Charged Off';
    
    -- BAD LOAN FUNDED AMOUNT
    SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM financial_loan
    WHERE loan_status = 'Charged Off';
    
    -- BAD LOAN FUNDED AMOUNT
    SELECT SUM(total_payment) AS Bad_Loan_Funded_Recieved FROM financial_loan
    WHERE loan_status = 'Charged Off';