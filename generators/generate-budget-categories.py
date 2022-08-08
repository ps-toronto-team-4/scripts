from random import randint, uniform

out = "INSERT INTO budget_categories(amount, budget_id, category_id, user_id)\nVALUES\n"

userId = int(input("Generate for which userid? > "))

def category_occurs():
    return randint(1, 2) == 1

def get_random_amount():
    return round(uniform(100.00, 1000.00), 2)

for budget in range(1, 8):
    for category in range(1+((userId-1)*8), 9+((userId-1)*8)):
        if category_occurs():
            amount = get_random_amount()
            out += f"({amount}, {budget}, {category}, {userId}),\n"

out = out[:-2]+'\n;\nCOMMIT;'
open(f'../sql/insert-budget-categories-user{userId}.sql', 'w').write(out)