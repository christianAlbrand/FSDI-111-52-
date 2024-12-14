from flask import Flask                         # from the flask module import the flask class
#OOP - object oriented paradigm
app = Flask(__name__)                           # When you create an instance of a class, you get an object; app is now an object

@app.get("/")                                   # Flask decorator that allows us to define routes
def home():
    me = {                                      # python3 dictionary
        "fist_name": "Christian",
        "last_name": "Albrand",
        "hobbies": "Playing videogames",
        "is_online": True
    }
    return me                                   # When you return a dictionary from a flask view function, it's converted to JSON