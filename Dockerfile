FROM tomcat:jdk16-corretto
ADD hello.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
