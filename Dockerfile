FROM tomcat
MAINTAINER shubham
COPY /webapp/target/webapp.war /usr/local/tomcat/webapp
