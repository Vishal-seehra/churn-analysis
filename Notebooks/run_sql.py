import sqlite3

conn = sqlite3.connect(r"C:\Users\seehr\OneDrive\Attachments\Documents\churn-analysis\churn.db")

with open(r"C:\Users\seehr\OneDrive\Attachments\Documents\churn-analysis\sql\churn_scoring.sql", "r") as f:
    conn.executescript(f.read())

with open(r"C:\Users\seehr\OneDrive\Attachments\Documents\churn-analysis\sql\segmentation.sql", "r") as f:
    conn.executescript(f.read())

print("All SQL executed!")

conn.close()
