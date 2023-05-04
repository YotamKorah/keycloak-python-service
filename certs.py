import certifi
import os
path = certifi.where()

os.system("cat rootCA.crt >> " + path)
