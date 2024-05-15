import torch
import numpy as np
import cv2
import time
import dlib
import torchvision
from simple_facerec import SimpleFacerec
import datetime
from flask import Flask, render_template, request, session, redirect, url_for, Response, jsonify
import mysql.connector

localtime = time.localtime(time.time())
localtime = time.asctime( time.localtime(time.time()) )

starttime = time.strftime("%S", time.localtime()) 


date = (time.strftime("%Y%m%d"))


conn = mysql.connector.connect(host="localhost",username="root",password="", database="detectresult")

mycursor=conn.cursor()

sqlstr = "CREATE TABLE IF NOT EXISTS y"
# sqlstr += date

sqlstr += "20230314"
sqlstr += "(CNA VARCHAR(10) PRIMARY KEY, hair VARCHAR(10), cloth VARCHAR(10),late VARCHAR(10),time VARCHAR(20),document VARCHAR(20),review VARCHAR(20) )"

tablename="y"+date
mycursor.execute(sqlstr)