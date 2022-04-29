#!/usr/bin/env python3
import websocket
import json
from time import sleep
import threading

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
    while True:#to run forever
        try:
            if lastmessage["message"]!="No message":
                print("I received: {}\n--------".format(str(lastmessage)))
            # sleep(0.5) #your calculations and processes here (sleep is used as simulation here)
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
wsapp.run_forever() #Run until connection dies
exit()
