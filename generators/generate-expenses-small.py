from random import randint, uniform
from lorem.text import TextLorem
"""
- create expenses for all of 2018-2022
    - every month
        - expenses have a 1/4 chance of occurring each day
            - 1-4 expenses per day an expense occurs
            - category is from 0 (null) to 8
            - merchant is from 0 (null) to 4
"""

out = "INSERT INTO expenses(amount, date, user_id, description, category_id, merchant_id, recurrence_id)\nVALUES\n"

def expense_occurs():
    return randint(1, 4) == 1

def get_random_category_id():
    id = randint(8, 16)
    return 'null' if id==8 else id

def get_random_merchant_id():
    id = randint(4, 8)
    return 'null' if id==4 else id

# def get_random_title():
#     lorem = TextLorem(srange=(2, 4))
#     return lorem.sentence()[:-1]

def get_random_description():
    if randint(1, 2) == 1:
        lorem = TextLorem(srange=(4, 10))
        return "'" + lorem.sentence()[:-1] + "'"
    return ""

def get_random_amount():
    return round(uniform(10.00, 125.00), 2)

for year in [2022]:
    for month in ['06', '07']:
        if year == 2022 and month > '08':
            break
        for day in ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28']:
            if year == 2022 and month == '08' and day > '01':
                break
            if expense_occurs():
                for i in range(randint(1, 5)):
                    merchantid = get_random_merchant_id()
                    categoryid = get_random_category_id()
                    # title = get_random_title()
                    amount = get_random_amount()
                    description = get_random_description()
                    out += f"({amount}, '{year}-{month}-{day}', 2, { description if description else 'null'}, {categoryid}, {merchantid}, null),\n"
out = out[:-2]+'\n;\nCOMMIT;'
open('../sql/insert-expenses-small.sql', 'w').write(out)