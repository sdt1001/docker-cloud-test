from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Welcom to UNH 698 Website!'