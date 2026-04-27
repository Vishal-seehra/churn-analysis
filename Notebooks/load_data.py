import pandas as pd
import sqlite3


df = pd.read_csv("../data/telco.csv")


print(df.head())
print(df.info())

conn = sqlite3.connect("../churn.db")


df.to_sql("customers", conn, if_exists="replace", index=False)

print(" Data loaded into SQLite database!")


check = pd.read_sql("SELECT * FROM customers LIMIT 5", conn)
print(check)

conn.close()
