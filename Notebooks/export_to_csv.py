import pandas as pd
import sqlite3


conn = sqlite3.connect(r"C:\Users\seehr\OneDrive\Attachments\Documents\churn-analysis\churn.db")


df = pd.read_sql("SELECT * FROM churn_segments", conn)


file_path = r"C:\Users\seehr\OneDrive\Attachments\Documents\churn-analysis\data\churn_segments.csv"
df.to_csv(file_path, index=False)

print("File saved at:", file_path)

conn.close()
