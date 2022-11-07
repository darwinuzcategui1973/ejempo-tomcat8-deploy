# FROM tomcat:8.5.47-jdk8-openjdk
FROM  11642590/tomcat8-java8-mio:1.0

# Comment
RUN echo 'cotenedor tomcat8 Darwin Felipe Uzcateguie # excelente'
EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
