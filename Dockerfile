# Use an official Tomcat base image
FROM tomcat:9-jdk17

# Copy the WAR file into Tomcat's webapps directory
COPY target/weather.war /usr/local/tomcat/webapps/weather.war

# Expose Tomcat's default port
EXPOSE 8080

# Run Tomcat when the container starts
CMD ["catalina.sh", "run"]
