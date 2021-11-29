from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello world"

if __name__ == "__main__":
    # This NEEDS to run on port 0.0.0.0, otherwise the port can't be exposed outside the container
    app.run(host='0.0.0.0', port=5000)

