from random import randint, uniform

out = "INSERT INTO budget_categories(id, amount, budget_id, category_id)\nVALUES\n"
count = 1

def category_occurs():
    return randint(1, 2) == 1

def get_random_amount():
    return round(uniform(100.00, 1000.00), 2)

for budget in range(1, 55):
    for category in range(1, 9):
        if category_occurs():
            amount = get_random_amount()
            out += f"({count}, {amount}, {budget}, {category}),\n"
            count+=1

out = out[:-2]+'\n;\nCOMMIT;'
open('sql/insert-budget-categories.sql', 'w').write(out)