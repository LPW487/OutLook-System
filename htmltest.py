import torch
import numpy as np
import cv2
from time import time
from flask import Flask, render_template, Response
import dlib
import torchvision
from simple_facerec import SimpleFacerec
from flask import Flask, render_template, request, session, redirect, url_for, Response, jsonify
import mysql.connector

cnt = 0
pause_cnt = 0
justscanned = False
 
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="",
    database="flask_db"
)
mycursor = mydb.cursor()

app = Flask(__name__)

 
@app.route('/')
def home():
    mycursor.execute("select prs_nbr, prs_name, prs_skill, prs_active, prs_added from prs_mstr")
    data = mycursor.fetchall()
 
    return render_template('index.html', data=data)
@app.route('/hello')
def hello():
   
    return "hellow word"
    
@app.route('/fr_page')
def fr_page():
    """Video streaming home page."""
    mycursor.execute("select *"
                     "from accs_hist")
    data = mycursor.fetchall()
 
    return render_template('fr_page.html', data=data)

@app.route('/countTodayScan')
def countTodayScan():
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        passwd="",
        database="flask_db"
    )
    mycursor = mydb.cursor()
 
    mycursor.execute("select *"
                     "from accs_hist")
    row = mycursor.fetchone()
    rowcount = row[0]
 
    return jsonify({'rowcount': rowcount})

@app.route('/loadData', methods = ['GET', 'POST'])
def loadData():
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        passwd="",
        database="flask_db"
    )
    mycursor = mydb.cursor()
 
    mycursor.execute("select *"
                     "from accs_hist")
    data = mycursor.fetchall()

 
    return jsonify(response = data)


if __name__ == '__main__':
    app.run()