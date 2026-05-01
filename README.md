# 📊 Customer Churn Analysis (SQL + Power BI,)

## 🚀 Overview

Customer churn is a major challenge for subscription-based businesses. This project analyzes customer behavior to identify churn patterns and build a **rule-based churn risk scoring system** using SQL, followed by an **interactive Power BI dashboard** for business insights.

---

## 🎯 Objectives

* Identify customers likely to churn
* Analyze key churn drivers
* Segment customers into risk categories
* Provide actionable business recommendations

---

## 🧱 Tech Stack

* **SQL (SQLite)** – Data cleaning, transformation, and scoring
* **Python (Pandas)** – Data ingestion
* **Power BI** – Dashboard & visualization

---

## 📁 Project Structure

```
churn-analysis/
│── data/                  # Raw dataset (CSV)
│── sql/
│   ├── cleaning.sql       # Data cleaning queries
│   ├── churn_scoring.sql  # Risk scoring logic
│   ├── segmentation.sql   # Customer segmentation
│   ├── analysis.sql       # Business analysis queries
│── notebooks/
│   ├── load_data.py       # Load CSV into SQLite
│   ├── run_sql.py         # Execute SQL scripts
│── dashboard/
│   ├── churn_dashboard.pbix
│── churn.db               # SQLite database
│── README.md
```

---

## 🧹 Data Cleaning

* Handled missing/blank values in `TotalCharges`
* Converted data types using SQL (`CAST`, `TRIM`)
* Created a cleaned dataset (`cleaned_customers`)

---

## 🧠 Churn Risk Scoring (No ML)

Built a rule-based scoring system using SQL:

| Factor          | Condition      | Score |
| --------------- | -------------- | ----- |
| Tenure          | < 12 months    | +2    |
| Contract        | Month-to-month | +3    |
| Monthly Charges | > 70           | +2    |
| Tech Support    | No             | +1    |

👉 Customers are categorized into:

* **High Risk**
* **Medium Risk**
* **Low Risk**

---

## 📊 Key Insights

* Customers with **month-to-month contracts** have the highest churn rate
* **New customers (tenure < 12 months)** are more likely to churn
* Customers with **higher monthly charges** show increased churn risk
* The **High Risk segment captures the majority of churned customers**, validating the scoring system

---

## 📈 Dashboard Highlights

* KPI metrics: Total Customers, Churn Rate, High Risk Customers
* Churn analysis by Contract, Tenure, and Payment Method
* Customer segmentation by risk category
* Revenue at risk estimation

---

## 💡 Business Recommendations

* Convert month-to-month customers to long-term contracts
* Improve onboarding experience for new customers
* Target high-risk customers with retention campaigns
* Optimize pricing strategies for high-charge users

---

## 📸 Dashboard Preview

<img width="1269" height="713" alt="Screenshot 2026-05-01 180323" src="https://github.com/user-attachments/assets/35d20984-7d04-4eda-bd84-ace480aaa288" />

---

## 🧠 Key Learnings

* Real-world data cleaning using SQL
* Building interpretable models without machine learning
* Translating data into business insights
* Designing impactful dashboards

