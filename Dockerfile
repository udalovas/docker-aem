FROM java:8

LABEL AEM_Version="6.2" \ 
      App_Server="Quickstart built-in Servlet Engine (Jetty 9.2)" \ 
      Java="Oracle SE 8 JRE 1.8.x (64bit)" \ 
      OS="Ubuntu (latest)"

MAINTAINER Alexey Udalov <al.udalec@gmail.com>

# Load context
RUN mkdir /opt/aem
COPY AEM_6.2_Quickstart.jar /opt/aem/AEM_6.2_Quickstart.jar
COPY license.properties /opt/aem/license.properties

WORKDIR /opt/aem

# Unpack repository
RUN java -Djava.awt.headless=true -jar AEM_6.2_Quickstart.jar -unpack

# Start options (START_OPTS)
ENV CQ_FOREGROUND y
ENV CQ_VERBOSE    y
ENV CQ_NOBROWSER  y
ENV CQ_PORT       4502
ENV CQ_RUNMODE    "dev,author"
ENV CQ_JVM_OPTS "-server -Xmx1524M -Xms512M"

# Open ports
EXPOSE 4502

# Camera, light, action!
CMD crx-quickstart/bin/quickstart
