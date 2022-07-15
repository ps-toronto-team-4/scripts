import psycopg2

conn = psycopg2.connect(database="postgres", user = "postgres", password = "admin123", host = "127.0.0.1", port = "5432")

deletes = ""
with open('deletes.sql', 'r') as f:
    deletes = f.read()

inserts = ""
with open('inserts.sql', 'r') as f:
    inserts = f.read()

print("Opened database successfully")

cur = conn.cursor()

cur.execute(deletes);
cur.execute(inserts);

conn.commit()