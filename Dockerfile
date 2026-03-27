# kaniko
# FROM tomcat:9-jre21
# buildah
FROM docker.io/tomcat:9-jre21
COPY target/hello-world.war /usr/local/tomcat/webapps/
