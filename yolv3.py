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
sqlstr += date

sqlstr += "(CNA VARCHAR(10) PRIMARY KEY, hair VARCHAR(10), cloth VARCHAR(10),late VARCHAR(10),time VARCHAR(20),document VARCHAR(20),review VARCHAR(20) )"

tablename="y"+date
mycursor.execute(sqlstr)
record = ['Unknown', 'N', 'N','N']



app = Flask(__name__)

@app.route('/')
def index():
   
    return render_template('index.html')

sub = cv2.createBackgroundSubtractorMOG2()

class MugDetection:
   

    def __init__(self, capture_index, model_name):
   
        self.capture_index = capture_index
        self.model = self.load_model(model_name)
        self.classes = self.model.names
        self.device = 'cuda' if torch.cuda.is_available() else 'cpu'
        print("Using Device: ", self.device)

    def get_video_capture(self):
 
      
        return cv2.VideoCapture(self.capture_index)

    def load_model(self, model_name):
   
        if model_name:
            # model = torch.hub.load('ultralytics/yolov5', 'custom', path=model_name, force_reload=True)
            model = torch.hub.load(r'ultralytics', 'custom', path=model_name, source='local')
        else:
            # model = torch.hub.load('ultralytics/yolov5', 'yolov5s', pretrained=True)
            model = torch.hub.load(r'ultralytics', 'yolov5s', pretrained=True)
        return model

    def score_frame(self, frame):
     
        self.model.to(self.device)
        frame = [frame]
        results = self.model(frame)
        labels, cord = results.xyxyn[0][:, -1], results.xyxyn[0][:, :-1]
        return labels, cord

    def class_to_label(self, x):
    
        return self.classes[int(x)]

    def plot_boxes(self, results, frame):
      
        labels, cord = results
        n = len(labels)
        x_shape, y_shape = frame.shape[1], frame.shape[0]
        
        global record
        global tablename
        for i in range(n):
            row = cord[i]
            if row[4] >= 0.3:
                x1, y1, x2, y2 = int(
                    row[0]*x_shape), int(row[1]*y_shape), int(row[2]*x_shape), int(row[3]*y_shape)
                bgr = (0, 255, 0)
                cv2.rectangle(frame, (x1, y1), (x2, y2), bgr, 2)
                label = (str)(self.class_to_label(labels[i]))
                cv2.putText(frame, label, (x1, y1), cv2.FONT_HERSHEY_SIMPLEX, 0.9, bgr, 3)
                #  "(CNA VARCHAR(10), hair VARCHAR(10), cloth VARCHAR(10),late VARCHAR(10) )"  
                print(label) 
                match label:
                    case "True":
                        record[1] ="yes"
                        sql = "UPDATE "+tablename+" SET hair = %s WHERE CNA = %s"
                        val = (record[1],record[0])
                        mycursor.execute(sql,val)
                        conn.commit()
                    case "False":
                        record[1] ="no"
                        sql = "UPDATE "+tablename+" SET hair = %s WHERE CNA = %s"
                        val = (record[1],record[0])
                        mycursor.execute(sql,val)
                        conn.commit()
                    case "sport":
                        record[2] ="sport"
                        sql = "UPDATE "+tablename+" SET cloth = %s WHERE CNA = %s"
                        val = (record[2],record[0])
                        mycursor.execute(sql,val)
                        conn.commit()
                    case "shirt":
                        record[2] ="shirt"
                        sql = "UPDATE "+tablename+" SET cloth = %s WHERE CNA = %s"
                        val = (record[2],record[0])
                        mycursor.execute(sql,val)
                        conn.commit()
            # record[0] ='Unknown'
                
       

        
        return frame

    def __call__(self):
       
        cap = self.get_video_capture()
        assert cap.isOpened()
       
 

        sfr = SimpleFacerec()
        sfr.load_encoding_images("C:/xampp/htdocs/FYP HTML/uploads")
        
        

        while True:

            ret, frame = cap.read()
            assert ret
            
            ##### INSERT MODEL ############
            face_locations, face_names = sfr.detect_known_faces(frame)
            results = self.score_frame(frame)
            frame = self.plot_boxes(results, frame)

            ##### INSERT MODEL ############
            
    
            
             
             ###### FACE ID ################
            for face_loc, name in zip(face_locations, face_names):
                y1, x2, y2, x1 = face_loc[0], face_loc[1], face_loc[2], face_loc[3]

                cv2.putText(frame, name,(x1, y1 - 10), cv2.FONT_HERSHEY_DUPLEX, 1, (0, 0, 200), 2)
            
                print(name)
                cv2.rectangle(frame, (x1, y1), (x2, y2), (0, 0, 200), 4)
                # "(CNA VARCHAR(10), hair VARCHAR(10), cloth VARCHAR(10),late VARCHAR(10) )"
                global record
                global tablename
                todaytime = (time.strftime("%H:%M:%S"))

                if name != record[0]:
                    record = ['Unknown', 'N', 'N','N']
                    record[0] = name
                
                    
                if name == record[0]:
                    if todaytime <= '09:00:00':
                        state= 'OnTime'
                        sql= "INSERT ignore INTO "+tablename+" (CNA,hair,cloth,late,time,document,review) VALUES (%s,%s,%s,%s,%s,%s,%s)"
                        val = (record[0],record[1],record[2],state,todaytime,'N',"N")
                        mycursor.execute(sql,val)
                        conn.commit()
                    if todaytime > '09:00:00':
                        state= 'Late'
                        sql= "INSERT ignore INTO "+tablename+" (CNA,hair,cloth,late,time,document,review) VALUES  (%s,%s,%s,%s,%s,%s,%s)"
                        val = (record[0],record[1],record[2],state,todaytime,"N","N")
                        mycursor.execute(sql,val)
                        conn.commit()
             ###### FACE ID ################


            
            image = cv2.imencode('.jpg', frame)[1].tobytes()
            yield (b'--frame\r\n'b'Content-Type: image/jpeg\r\n\r\n' + image + b'\r\n')

            # cv2.imshow('YOLOv5 Detection', frame)

            if cv2.waitKey(5) & 0xFF == ord('q'):
                break

        cap.release()
        cv2.destroyAllWindows()
   
# Create a new object and execute.
detector = MugDetection(capture_index=0, model_name='newbest.pt')



@app.route('/video_feed', methods=['GET'])
def video_feed():
   
    return Response(detector(),
                    mimetype='multipart/x-mixed-replace; boundary=frame')
    
@app.route('/fr_page')
def fr_page():
 
    mycursor.execute("select *"
                     "from "+tablename)
    data = mycursor.fetchall()
 
    return render_template('fr_page.html', data=data)



@app.route('/loadData', methods = ['GET', 'POST'])
def loadData():
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        passwd="",
        database="detectresult"
    )
    global record
    global tablename
    mycursor = mydb.cursor()
    hourmin = (time.strftime("%H:%M"))
    getlike =hourmin + "%"
    # sql = ("SELECT * from "+tablename+"WHERE time LIKE %s ")
    # val = (getlike)
    mycursor.execute("SELECT * from  "+tablename+" WHERE time LIKE '"+getlike+"' ")
    data = mycursor.fetchall()
    
    # sql= "SELECT * from "+tablename+"WHERE time LIKE '%s%%'" % getlike
    # val = (getlike)
    # mycursor.execute(sql,val)
    # data = mycursor.fetchall()
   

 
    return jsonify(response = data)


if __name__ == '__main__':
    app.run()