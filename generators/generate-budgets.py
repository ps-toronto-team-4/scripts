out = "INSERT INTO budgets(month, year, user_id)\nVALUES\n"

for year in [2018, 2019, 2020, 2021, 2022]:
    for month in range(0, 12):
        if year == 2022 and month > 7:
            break
        out += f"({month}, {year}, 1),\n"
out = out[:-2]+'\n;\nCOMMIT;'
open('../sql/insert-budgets.sql', 'w').write(out)