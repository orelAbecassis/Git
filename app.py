from flask import Flask
from flask_sqlalchemy import SQLAlchemy
import os

app = Flask(__name__)

# connexion a la bdd
app.config['SQLALCHEMY_DATABASE_URI'] = os.getenv('DATABASE_URL')
db = SQLAlchemy(app)


@app.route('/')
def hello():
    return 'Hello World!'


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
