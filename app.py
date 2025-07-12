from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello world, This is Ayush, and this project is ci-cd pipeline of this project, hopefully it works"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
