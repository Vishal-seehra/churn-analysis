CREATE TABLE cleaned_customers AS
SELECT 
    customerID,
    gender,
    SeniorCitizen,
    Partner,
    Dependents,
    tenure,
    PhoneService,
    MultipleLines,
    InternetService,
    OnlineSecurity,
    OnlineBackup,
    DeviceProtection,
    TechSupport,
    StreamingTV,
    StreamingMovies,
    Contract,
    PaperlessBilling,
    PaymentMethod,
    MonthlyCharges,

    CAST(TRIM(TotalCharges) AS FLOAT) AS TotalCharges,

    Churn

FROM customers
WHERE TRIM(TotalCharges) != '';

SELECT COUNT(*) FROM cleaned_customers;
