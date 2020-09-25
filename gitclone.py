import sys
import os

path  = "/home/maksim/Desktop/mydockerbuild" 
clone = "git clone git@github.com:gordiemp/n.git" 

os.system("/root/.ssh/id_rsa.pub")
os.chdir(path) #Specifying the path where the cloned project needs to be copied
os.system(clone) #Cloning
