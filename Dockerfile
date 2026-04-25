FROM tomcat:10.1.24-jdk21-temurin
WORKDIR /usr/local/tomcat/webapps/
RUN rm -rf *

COPY ../ROOT.war ./ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
