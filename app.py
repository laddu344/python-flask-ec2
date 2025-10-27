from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'It's Prasad Project'

if __name__ == '__main__':
    # Allow external access to the Flask app
    app.run(host='0.0.0.0', port=5000)
