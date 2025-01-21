from flask import Flask

app = Flask(__name__)

@app.route("/info")
def doc():
    return "Welcome to Docker... Info"

@app.route("/")
def home():
    return "Welcome to Docker... Home"


app.run(host='0.0.0.0', port=5000)
