# Use Tomcat 9 with JDK 11 (adjust as needed)
FROM tomcat:9.0-jdk11-openjdk-slim

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the Tomcat webapps folder as ROOT.war
# This makes your app accessible at the root URL (/)
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
