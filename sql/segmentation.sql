
DROP TABLE IF EXISTS churn_segments;

CREATE TABLE churn_segments AS
SELECT *,
       CASE 
           WHEN churn_risk_score >= 6 THEN 'High Risk'
           WHEN churn_risk_score BETWEEN 3 AND 5 THEN 'Medium Risk'
           ELSE 'Low Risk'
       END AS risk_category
FROM churn_scores;
