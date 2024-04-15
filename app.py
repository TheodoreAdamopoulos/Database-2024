from flask import Flask

from database.db import Database

USER = "postgres"
PASSWORD = "0000"
DATABASE = "db24_team11"

app = Flask(__name__)
db = Database(database=DATABASE, user=USER, password=PASSWORD)


@app.route('/')
def hello_world():
    return '<h1>Hello__World!</h1>'


if __name__ == '__main__':
    app.run(debug=True)
