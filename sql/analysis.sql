SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
    ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS churn_rate
FROM churn_segments;


SELECT risk_category,
       COUNT(*) AS total,
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
       ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS churn_rate
FROM churn_segments
GROUP BY risk_category
ORDER BY churn_rate DESC;


SELECT Contract,
       COUNT(*) AS total,
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
       ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS churn_rate
FROM churn_segments
GROUP BY Contract
ORDER BY churn_rate DESC;


SELECT
    CASE
        WHEN tenure < 12 THEN 'New'
        WHEN tenure BETWEEN 12 AND 24 THEN 'Mid'
        ELSE 'Loyal'
    END AS tenure_group,

    COUNT(*) AS total,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
    ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS churn_rate

FROM churn_segments
GROUP BY tenure_group
ORDER BY churn_rate DESC;


SELECT *
FROM churn_segments
WHERE risk_category = 'High Risk'
AND Churn = 'No';
