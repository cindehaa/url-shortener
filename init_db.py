import sqlite3

# connect to a file called database.db which is created when the program is executed
connection = sqlite3.connect('database.db')

# executes SQL statements which creates the url table
with open('schema.sql') as f:
    connection.executescript(f.read())

connection.commit()
connection.close()