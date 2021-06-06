FROM tomcat:jdk16-corretto
ADD target/hello.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
