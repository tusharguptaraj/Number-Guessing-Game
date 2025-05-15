FROM tomcat:9.0-jdk17

# Clean the default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file into Tomcat
COPY NumbeGuessingGame.war /usr/local/tomcat/webapps/ROOT.war

# Expose default port
EXPOSE 8080

CMD ["catalina.sh", "run"]