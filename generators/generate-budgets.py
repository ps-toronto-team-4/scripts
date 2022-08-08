out = "INSERT INTO budgets(month, year, user_id)\nVALUES\n"
userId = int(input("Generate for which userid? > "))

for year in [2022]:
    for month in range(0, 12):
        if year == 2022 and month > 6:
            break
        out += f"({month}, {year}, {userId}),\n"
out = out[:-2]+'\n;\nCOMMIT;'
open(f'../sql/insert-budgets-user{userId}.sql', 'w').write(out)