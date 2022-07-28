import psycopg2
conn = psycopg2.connect(database="postgres", user = "postgres", password = "admin123", host = 'localhost', port = "5432")

creates = ""
with open('sql/create-tables.sql', 'r') as f:
    creates = f.read()

deletes = ""
with open('sql/deletes.sql', 'r') as f:
    deletes = f.read()

inserts = ""
with open('sql/inserts.sql', 'r') as f:
    inserts = f.read()

insert_expenses = ""
with open('sql/insert-expenses.sql', 'r') as f:
    insert_expenses = f.read()

insert_expenses_small = ""
with open('sql/insert-expenses-small.sql', 'r') as f:
    insert_expenses_small = f.read()

insert_budgets = ""
with open('sql/insert-budgets.sql', 'r') as f:
    insert_budgets = f.read()

insert_budget_categories = ""
with open('sql/insert-budget-categories.sql', 'r') as f:
    insert_budget_categories = f.read()

print("Opened database successfully")

cur = conn.cursor()

cur.execute(creates);
print("Successfully dropped and created tables")

cur.execute(deletes);
print("Successfully cleared db")

cur.execute(inserts);
print("Successfully inserted data (besides expenses)")

cur.execute(insert_expenses);
print("Successfully inserted expenses for user 1")

cur.execute(insert_expenses_small);
print("Successfully inserted expenses for user 2")

cur.execute(insert_budgets);
print("Successfully inserted budgets")

cur.execute(insert_budget_categories);
print("Successfully inserted budget categories")

conn.commit()