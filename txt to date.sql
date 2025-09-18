SELECT *
FROM financial_loan;
ALTER TABLE financial_loan 
ADD COLUMN cnext_payment_date DATE NULL;

UPDATE financial_loan
SET cnext_payment_date = STR_TO_DATE(`next_payment_date`, '%Y-%m-%d')
WHERE `next_payment_date` IS NOT NULL;

ALTER TABLE financial_loan DROP COLUMN `next_payment_date`;
ALTER TABLE financial_loan CHANGE cnext_payment_date `next_payment_date` DATE;




