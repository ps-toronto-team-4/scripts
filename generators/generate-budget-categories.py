from random import randint, uniform

out = "INSERT INTO budget_categories(amount, budget_id, category_id, user_id)\nVALUES\n"

def category_occurs():
    return randint(1, 2) == 1

def get_random_amount():
    return round(uniform(100.00, 1000.00), 2)

for budget in range(1, 55):
    for category in range(1, 9):
        if category_occurs():
            amount = get_random_amount()
            out += f"({amount}, {budget}, {category}, 1),\n"

out = out[:-2]+'\n;\nCOMMIT;'
open('../sql/insert-budget-categories.sql', 'w').write(out)