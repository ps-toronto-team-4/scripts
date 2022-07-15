from random import randint, uniform, sample

"""

- create expenses for all of 2020, 2021
    - every month
        - expenses has a 1/2 chance of occurring each day
            - 1-4 expenses per day an expense occurs
            - category is from 0 (null) to 8
            - merchant is from 0 (null) to 4


"""

out = ""
count = 1

nouns = open('nouns.txt', 'r').readlines()

def expense_occurs():
    return randint(1, 2) == 1

def get_random_category_id():
    id = randint(0, 9)
    return 'null' if id==0 else id

def get_random_merchant_id():
    id = randint(0, 5)
    return 'null' if id==0 else id

def get_random_noun():
    return sample(nouns, 1)[0]

def get_random_title():
    return f'{get_random_noun()} {get_random_noun()}'

def get_random_description():
    out = ''
    for i in range(randint(5, 25)):
        out+= get_random_noun() + ' '

def get_random_amount():
    return round(uniform(10.00, 125.00), 2)

for year in [2020, 2021, 2022]:
    for month in ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12']:
        if year == 2022 and month > '07':
            break
        for day in ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28']:
            if expense_occurs():
                merchantid = get_random_merchant_id()
                categoryid = get_random_category_id()
                title = get_random_title()
                amount = get_random_amount()
                description = get_random_description()
                out += f"({count}, '{title}', {amount}, '{year}-{month}-{day}', 1, '{description}', {categoryid}, {merchantid}, null),\n"
                print(out)
                count +=1
