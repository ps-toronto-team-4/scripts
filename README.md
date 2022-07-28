# scripts
Useful scripts for improving developer quality of life

*Just want to run the db-init script and have Docker installed? simply run the following:*

```bash
.\run.bat
```

## db-setup.py

This file will drop any existing databases you have, recreate them, and insert sample data into them. It creates one user, 8 categories, 4 merchants, 4 years worth of sample expenses (over 1000 total), and sample budgets/budget categories for each month in those 4 years. If you'd like a fully-featured database with enough data to fully test the app, this is the script for you.

### Requirements

To run the `db-setup.py` file, you'll need a few things set up first:

1. Postgres. This is fairly self explanatory, without the database installed it's not possible to add data to it. Simply run the following two commands to set it up:

```sh
```
2. Python3. This one is also self explanatory, since it is a Python file. Simply [download and install Python](https://www.python.org/downloads/) and you'll be good to go.
3. psycopg2. This is a Python library used to connect to the Postgres database. You can install it by running `pip install psycopg2`. 

Once you have all of the requirements, simply run the script with `py db-setup.py` (or `python3 db-setup.py` depending on your platform).

## Directories

### sql/

Here is a collection of various sql scripts you can run to initialize your database. Most are relatively self explanatory. Do note, if you want to use the scripts you should first run `create-tables.sql` and `deletes.sql` to start from fresh. Otherwise, the scripts may not behave as intended.  
The recommended order to run the scripts in is as follows:

1. create-tables.sql
2. deletes.sql
3. inserts.sql
4. insert-expenses.sql
5. insert-budgets.sql
6. insert-budget-categories.sql

If you just want to start from a fresh database without any of the sample data, run `create-tables.sql` or `deletes.sql`, depending on if you want to completely recreate the tables or if you just want to remove the data from them.

### generators/

This is a collection of Python scripts that create some of the sql files in the `sql` directory. Their uses can be deduced by their file names. Note that to run the `generate-budgets.py` script, you'll need the Python library `lorem`. Simply run `pip install lorem` to install it.

## Running Within Docker

If you don't have Python installed or simply don't want to go through the process of using Python, you can run these scripts within Docker.

Simply run the following:

```bash
docker rmi ps4-scripts
docker build --tag ps4-scripts .
docker run --net=host --rm ps4-scripts
docker rmi ps4-scripts
```

or, simply use the run script:

```bash
.\run.bat
```
