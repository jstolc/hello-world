hello-world
===========

`hello-world` is an example of "Hello World" web application and its automated deployment using Docker. The web app is a Servlet written in Java, which is plugged-in into Tomcat's webapps directory inside the Docker container. For a convenient deployment, all tasks are bundled into a single script. 


### Prerequisites 

`hello-world` requires an instance of Linux OS that uses `yum` as package manager. Functionality was tested on a freshly installed CentOS 7 and the same is also a recommended platform to run this project on. Installation media used: [link](http://ftp.heanet.ie/pub/centos/7.9.2009/isos/x86_64/CentOS-7-x86_64-Minimal-2009.iso). 


### Perparation

1. Make sure your system is connected to the internet
2. Log in as "root" 
3. Install `git`
```
    $ yum install -y git
```
4. Download `hello-world` repository
```
    $ git clone https://github.com/jstolc/hello-world.git
```    

### Build  

Maven was used to build the servlet. The steps are described bellow: 

  * Obtain software required for the build
```
    $ install java-latest-openjdk
    $ install maven
```
  * Compile the code and assemlbe the servlet package
``` 
    $ cd hello-world
    $ mvn install
```
  * If successful, `hello.war` servlet package can be found under `target/` directory 


### Deploy and run 
    
1. Run "hello-world-deploy.sh"
```
    $ cd hello-world
    $ sh hello-world-deploy.sh
```    
After this step, there is no further interaction required. Your app is being deployed and will start automatically. Depending on your system's performance and the speed of your internet connection, it should take just a moment for the web app to become accessible via http://localhost/hello.


### Development

For the purpose of development environment, simply the same instance of CentOS was utilized.

Source files described:

  * `src/main/java/jstolc/HelloWorldServlet.java` - code responsible for responding with "hello world!" string
  * `src/main/webapp/WEB-INF/web.xml` - webapp configuration for Tomcat
  * `Dockerfile` - container build template
  * `hello-world-deploy.sh` - simple bash script to batch-install docker, build and run the container

Components  

  * Servlet `target/hello.war`
  * `Dockerfile`
  * Installation script `hello-world-deploy.sh`


### References  

This project was inspired by the following tutorial: https://www.cprime.com/resources/blog/deploying-your-first-web-app-to-tomcat-on-docker/. 

Other useful documentation sources used during making of `hello-world`:
  * https://tomcat.apache.org/tomcat-9.0-doc/appdev/deployment.html
  * https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html
  * https://docs.docker.com/develop/develop-images/dockerfile_best-practices/










