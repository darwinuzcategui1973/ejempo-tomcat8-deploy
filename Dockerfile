FROM  11642590/tomcat8-java8-mio:1.0
ENV PORT 8989
EXPOSE 8080
# CMD ["/usr/local/tomcat/bin/catalina.sh", "run", "-b", "0.0.0.0:$PORT/ejemplo"]
# CMD ["/usr/local/tomcat/bin/catalina.sh", "run", "-b", "localhost:$PORT/ejemplo"]
CMD ["/usr/local/tomcat/bin/catalina.sh", "run", "-b", "gunicorn"  , "-b", "0.0.0.0:8080", "app-darwin"]
# , "-b", "0.0.0.0:$PORT"]
# CMD ["gunicorn"  , "-b", "0.0.0.0:8080", "https://ejempo-tomcat8-deploy-production.up.railway.app/"]
# 0.0.0.0:$PORT
# CMD ["/usr/local/tomcat/bin/catalina.sh", "run", "-b", "localhost:$PORT/ejemplo"]
# ENTRYPOINT ["http://localhost:$PORT/ejemplo", "-D", "FOREGROUND"]

