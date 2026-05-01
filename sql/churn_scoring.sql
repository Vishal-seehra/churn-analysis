DROP TABLE IF EXISTS churn_scores;

CREATE TABLE churn_scores AS
SELECT 
    customerID,
    tenure,
    MonthlyCharges,
    Contract,
    TechSupport,
    PaymentMethod,
    Churn,

    (CASE WHEN tenure < 12 THEN 2 ELSE 0 END) +
    (CASE WHEN MonthlyCharges > 70 THEN 2 ELSE 0 END) +
    (CASE WHEN Contract = 'Month-to-month' THEN 3 ELSE 0 END) +
    (CASE WHEN TechSupport = 'No' THEN 1 ELSE 0 END)
    AS churn_risk_score

FROM cleaned_customers;
