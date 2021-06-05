hello-world
===========

hello-world is an example of simple "Hello World" web app and its deployment into Docker container. 

## Prerequisites 

hello-world requires an instance of Linux OS that uses `yum` as package manager. Functionality was tested on a freshly installed CentOS 7 and this is also recommended platform to run this repository on. Installation media used: [link](http://ftp.heanet.ie/pub/centos/7.9.2009/isos/x86_64/CentOS-7-x86_64-Minimal-2009.iso). 

## Installation  
    
1. Make sure your system is connected to the internet
2. Log in as "root" 
3. Install git
```
    $ yum install -y git
```
4. download hello-world repository
```
    $ git clone https://github.com/jstolc/hello-world.git
```    
5. run "hello-world-deploy.sh"
```
    $ cd hello-world
    $ sh hello-world-deploy.sh
```    
After this step there is no interaction required. Depending on the performance of your system and your internet connection, it should take just a moment for the web app to become accessible at http://localhost/hello.
