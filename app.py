from flask import Flask, render_template

app = Flask(__name__)
# creating an app instance

# use a decorator @ to define the route for our web page


@app.route("/")
# setting up a default page
def index():
    return "Welcome to DevOps team"


@app.route("/welcome/")
def welcome():
    return "Welcome on board"


@app.route("/home/")
def home():
    return render_template('index.html')


#create 2 more pages/routes
#add the functionality for email and password



if __name__ == "__main__":
    app.run(debug=True)
