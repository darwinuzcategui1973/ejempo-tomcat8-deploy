# FROM tomcat:8.5.47-jdk8-openjdk
FROM  11642590/tomcat8-java8-mio:1.0

# Comment
RUN echo 'cotenedor tomcat8 Darwin Felipe Uzcateguie # excelente'
# copio .war
# COPY ejemplo.war /usr/local/tomcat/webapps
# ADD ES COPIAR PERO PARA LINUX
# ADD ejemplo.war /usr/local/tomcat/webapps

# RUN apt-get update && apt-get -y upgrade
# despues veo con la base datos RUN apt-get install -y mysql-server

# ADD tomcat8/* /opt/tomcat8/ 
# ADD ejecutar.sh /usr/local/bin/script.sh
# RUN chmod +x /opt/tomcat8/bin/*.sh

EXPOSE 8080
RUN echo "Hola ${PORT}!"
CMD echo "Hola ${PORTE}!"
# docker run -p $PORT:8080  
# RUN docker run -p $PORT:8080  

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
