from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Welcome to the UNH698 Website!'