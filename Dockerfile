FROM  11642590/tomcat8-java8-mio:1.0
# ENV PORT 8080
EXPOSE 8080
 # CMD ["/usr/local/tomcat/bin/catalina.sh", "run" , "-b", "0.0.0.0:$PORT"]
 CMD ["/usr/local/tomcat/bin/catalina.sh", "-b", "0.0.0.0:$PORT"]
