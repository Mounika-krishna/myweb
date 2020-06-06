FROM java1
EXPOSE 8080
WORKDIR /opt/myapplication/
COPY . .
RUN mvn clean install && cp ./target/myweb-*.war /opt/tomcat/webapps/myapp.war
CMD ["/opt/tomcat/bin/catalina.sh", "run"]

