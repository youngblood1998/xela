#!/usr/bin/env python3
import websocket
import json
from time import sleep
import threading
import rospy
import std_msgs
from my_xela_initial.msg import xela_msg

initial_all = []

ip = "172.28.91.241" #your computer IP on the network
port = 5000 #the port the server is running on

lastmessage = {"message":"No message"} #default message you will overwrite when you get update

def on_message(wsapp, message):
    global lastmessage #globalize to overwrite original
    try:
        data = json.loads(message)
    except Exception:
        pass
    else:
        try:
            if data["message"] == "Welcome":#get the Welcome Message with details, print if you like
                print(data)
            else:
                lastmessage = data
        except Exception:
            pass #ignore message as it's probably invalid
def threader(target, args=False, **targs):
#args is tuple of arguments for threaded function other key-value pairs will be sent to Thread
    if args:
        targs["args"]=(args,)
    thr = threading.Thread(target=target, **targs)
    thr.daemon = True
    thr.start()
def mesreader():#this is your app reading the last valid message you received
    global initial_all
    while True:#to run forever
        try:
            if lastmessage["message"]!="No message":
                data_list = lastmessage["2"]["data"].split(',')
                data_map_int = list(map(lambda x:int(x,16),data_list))
                pub_all_msg = xela_msg()
                pub_all_sum_msg = xela_msg()
                pub_x_msg = xela_msg()
                pub_y_msg = xela_msg()
                pub_z_msg = xela_msg()
                h = std_msgs.msg.Header()
                h.stamp = rospy.Time.now()

                if initial_all==[]:
                    for i in range(len(data_map_int)):
                        initial_all.append(data_map_int[i])
                else:
                    for i in range(len(data_map_int)):
                        data_map_int[i] = data_map_int[i] - initial_all[i]
                for i in range(0,48,3):
                    data_map_int[i] = data_map_int[i]*0.0004691
                for i in range(1,48,3):
                    data_map_int[i] = data_map_int[i]*0.0004421
                for i in range(2,48,3):
                    data_map_int[i] = data_map_int[i]*0.0004451

                pub_all_msg.array.data = data_map_int
                pub_x_msg.array.data = [data_map_int[i] for i in range(0,48,3)]
                pub_y_msg.array.data = [-data_map_int[i] for i in range(1,48,3)]
                pub_z_msg.array.data = [data_map_int[i] for i in range(2,48,3)]
                pub_all_sum_msg.array.data = [sum(pub_x_msg.array.data), sum(pub_y_msg.array.data),sum(pub_z_msg.array.data)]

                pub_all_msg.header = h
                pub_all_sum_msg.header = h
                pub_x_msg.header = h
                pub_y_msg.header = h
                pub_z_msg.header = h

                pub_all_data.publish(pub_all_msg)
                pub_all_sum_data.publish(pub_all_sum_msg)
                pub_x_data.publish(pub_x_msg)
                pub_y_data.publish(pub_y_msg)
                pub_z_data.publish(pub_z_msg)
                print("I received: {}\n--------".format(str(lastmessage)))
            sleep(0.01) #your calculations and processes here (sleep is used as simulation here)
        except KeyboardInterrupt:
            break #break on KeyboardInterrupt
        except Exception as e:
            print("Exception: {}: {}".format(type(e).__name__,e))
    try: #try to close the app once you press CTRL + C
        wsapp.close()
    except Exception:
        exit()
threader(mesreader,name="Receiver") #start you main app
websocket.setdefaulttimeout(1) #you should avoid increasing it.
wsapp = websocket.WebSocketApp("ws://{}:{}".format(ip,port), on_message=on_message)#set up WebSockets

rospy.init_node('xela_publisher_2', anonymous=True)
pub_all_data = rospy.Publisher('xela/2_all_data_calibrated', xela_msg, queue_size=1000)
pub_all_sum_data = rospy.Publisher('xela/2_sum_data_calibrated', xela_msg, queue_size=1000)
pub_x_data = rospy.Publisher('xela/2_x_data_calibrated', xela_msg, queue_size=1000)
pub_y_data = rospy.Publisher('xela/2_y_data_calibrated', xela_msg, queue_size=1000)
pub_z_data = rospy.Publisher('xela/2_z_data_calibrated', xela_msg, queue_size=1000)

wsapp.run_forever() #Run until connection dies
exit()
