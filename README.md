hello-world
===========

hello-world is an example of a simple "Hello World" web app and its deployment into Docker container. Af

## Prerequisites 

hello-world requires Linux OS that uses yum as package manager. Functionality was tested on a freshly installed CentOS 7 and this is also recommended. Installation media used: [link](http://ftp.heanet.ie/pub/centos/7.9.2009/isos/x86_64/CentOS-7-x86_64-Minimal-2009.iso). 

## Installation  
    
1. Make sure the system is connected to the internet
2. Login as "root" 
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
After this step there is no interaction needed and after few moments the web app will be accessible at http://localhost/hello 
