import psycopg2

conn = psycopg2.connect(database="postgres", user = "postgres", password = "admin123", host = 'localhost', port = "5432")
print("Opened database successfully")

cur = conn.cursor()
NUMUSERS = 2

cur.execute(open('sql/create-tables.sql', 'r').read())
print("Successfully dropped and created tables")

cur.execute(open('sql/deletes.sql', 'r').read())
print("Successfully cleared db")

cur.execute(open('sql/inserts.sql', 'r').read())
print("Successfully inserted data (besides expenses)")

for i in range(1, NUMUSERS+1):
    cur.execute(open(f'sql/insert-expenses-user{i}.sql', 'r').read())
    print(f"Successfully inserted expenses for user {i}")
    cur.execute(open(f'sql/insert-budgets-user{i}.sql', 'r').read())
    print(f"Successfully inserted budgets for user {i}")
    cur.execute(open(f'sql/insert-budget-categories-user{i}.sql', 'r').read())
    print(f"Successfully inserted budget categories for user {i}")

conn.commit()