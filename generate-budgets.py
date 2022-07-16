out = "INSERT INTO budgets(id, month, year, user_id)\nVALUES\n"
count = 1

for year in [2018, 2019, 2020, 2021, 2022]:
    for month in range(1, 13):
        if year == 2022 and month > 6:
            break
        out += f"({count}, {month}, {year}, 1),\n"
        count +=1
out = out[:-2]+'\n;\nCOMMIT;'
open('sql/insert-budgets.sql', 'w').write(out)