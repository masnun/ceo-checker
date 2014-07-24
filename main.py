# -*- coding: utf-8 -*-
import bottle
bottle.DEBUG = True

from bottle import Bottle, template, request, view
import urllib2
import json

# Init
app = Bottle()


@app.get('/')
def home():
    """ Return Hello World at application root URL"""
    return template("home")


@app.post("/")
@view("group")
def get_ceo():
    try:
        group = request.params.get("group")
        url = "https://graph.facebook.com/" + group + "/?access_token=233636393327656|bb6c8e3c936ad0ace1bbc950eb567315"
        resp = urllib2.urlopen(url).read()
        data = json.loads(resp)
        return {'data': data, 'error': False}
    except:
        return {"error": True}


@app.error(404)
def error_404(error):
    """Return a custom 404 error."""
    return 'Sorry, Nothing at this URL.'


    # run(host='localhost', port=8080)