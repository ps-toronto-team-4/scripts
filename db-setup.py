import psycopg2

conn = psycopg2.connect(database="postgres", user = "postgres", password = "admin123", host = 'localhost', port = "5432")
print("Opened database successfully")

cur = conn.cursor()

cur.execute(open('sql/create-tables.sql', 'r').read())
print("Successfully dropped and created tables")

cur.execute(open('sql/deletes.sql', 'r').read())
print("Successfully cleared db")

cur.execute(open('sql/insert-defaults.sql', 'r').read())
print("Successfully inserted user and default category data")

cur.execute(open('sql/insert-data.sql', 'r').read())
print("Successfully inserted all other data")

conn.commit()