FROM  11642590/tomcat8-java8-mio:1.0
EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
CMD ["gunicorn"  , "-b", "0.0.0.0:8080", "ejempo-tomcat8-deploy-production.up.railway.app:app"]
# 0.0.0.0:$PORT

