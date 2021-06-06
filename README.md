hello-world
===========

`hello-world` is an example of "Hello World" web application and its automated deployment into a Docker container.

## Prerequisites 

hello-world requires an instance of Linux OS that uses `yum` as package manager. Functionality was tested on a freshly installed CentOS 7 and that is also a recommended platform to run this project on. Installation media used: [link](http://ftp.heanet.ie/pub/centos/7.9.2009/isos/x86_64/CentOS-7-x86_64-Minimal-2009.iso). 

## Installation 
    
1. Make sure your system is connected to the internet
2. Log in as "root" 
3. Install `git`
```
    $ yum install -y git
```
4. download `hello-world` repository
```
    $ git clone https://github.com/jstolc/hello-world.git
```    
5. run "hello-world-deploy.sh"
```
    $ cd hello-world
    $ sh hello-world-deploy.sh
```    
After this step there is no further interaction required. Your app is being deployed and will start automatically. Depending your system's performance and the speed of your internet connection, it should take just a moment for the web app to become accessible via http://localhost/hello.

## Description 

The web app is written in Java. It's done in a form of Servlet, which is later plugged-in into Tomcat web server. 

