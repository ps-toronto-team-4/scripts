from random import randint, uniform
from lorem.text import TextLorem

numUsers = int(input("How many users would you like to generate data for > "))

out = ""
for userId in range(1, numUsers+1):
    def expense_occurs():
        return randint(1, 4) == 1
    def get_random_category_id():
        id = randint(0, 8)
        return 'null' if id==0 else id + ((userId-1) * 8)
    def get_random_merchant_id():
        id = randint(0, 4)
        return 'null' if id==0 else id + ((userId-1) * 4)
    def get_random_description():
        if randint(1, 2) == 1:
            lorem = TextLorem(srange=(4, 10))
            return "'" + lorem.sentence()[:-1] + "'"
        return ""
    def get_random_amount():
        return round(uniform(10.00, 125.00), 2)

    out+=f"""INSERT INTO categories(name, colour_hex, description, user_id)
VALUES
('Groceries', '2797B0', 'Food and other misc. groceries', {userId}),
('Rent', 'B662BF', 'Payment for rent', {userId}),
('Dining Out', 'EB7734', 'Eating out or takeout', {userId}),
('Miscellaneous', 'E6E287', 'Expenses that do not quite fit anywhere else', {userId}),
('Transportation', 'EB4034', 'Transportation related expenses', {userId}),
('Electronics', 'FFFF00', 'Phones, tablets, computers, etc.', {userId}),
('Car Insurance', 'ABE8A9', null, {userId}),
('Cell Phone Bill', 'D3EB34', null, {userId});
COMMIT;
INSERT INTO merchants(name, description, user_id, default_category_id)
VALUES
('Walmart', null, {userId}, null),
('Loblaws', null, {userId}, {1 + ((userId-1)*8)}),
('CIBC', 'My bank', {userId}, {4 + ((userId-1)*8)}),
('Bell', 'Bell Canada mobile division', {userId}, {8 + ((userId-1)*8)});
COMMIT;
INSERT INTO expenses(amount, date, user_id, description, category_id, merchant_id, recurrence_id)
VALUES"""
    temp = ""
    for year in [2022]:
        for month in ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12']:
            if year == 2022 and month > '08':
                break
            for day in ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28']:
                if year == 2022 and month == '08' and day > '08':
                    break
                if expense_occurs():
                    for i in range(randint(1, 5)):
                        merchantid = get_random_merchant_id()
                        categoryid = get_random_category_id()
                        amount = get_random_amount()
                        description = get_random_description()
                        temp += f"({amount}, '{year}-{month}-{day}', {userId}, { description if description else 'null'}, {categoryid}, {merchantid}, null),\n"
    temp = temp[:-2]+'\n;\nCOMMIT;\n'
    out+=temp
    temp = "INSERT INTO budgets(month, year, user_id)\nVALUES\n"

    for year in [2022]:
        for month in range(0, 12):
            if year == 2022 and month > 6:
                break
            temp += f"({month}, {year}, {userId}),\n"
    temp = temp[:-2]+'\n;\nCOMMIT;\n'
    out+=temp

    temp = "INSERT INTO budget_categories(amount, budget_id, category_id, user_id)\nVALUES\n"

    def category_occurs():
        return randint(1, 2) == 1

    def get_random_amount():
        return round(uniform(100.00, 1000.00), 2)

    for budget in range(1, 8):
        for category in range(1+((userId-1)*8), 9+((userId-1)*8)):
            if category_occurs():
                amount = get_random_amount()
                temp += f"({amount}, {budget}, {category}, {userId}),\n"

    temp = temp[:-2]+'\n;\nCOMMIT;\n'
    out+=temp
open('../sql/insert-data.sql', 'w').write(out);