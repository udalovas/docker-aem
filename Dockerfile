FROM java:8

LABEL AEM_Version="6.2"
LABEL App_Server="Quickstart built-in Servlet Engine (Jetty 9.2)"
LABEL Java="Oracle SE 8 JRE 1.8.x (64bit)"
LABEL OS="Ubuntu (latest)"

MAINTAINER Alexey Udalov <al.udalec@gmail.com>

# Load context
RUN mkdir /opt/aem
ADD AEM_6.2_Quickstart.jar /opt/aem/AEM_6.2_Quickstart.jar
ADD license.properties /opt/aem/license.properties

WORKDIR /opt/aem

# Unpack repository
RUN java -Djava.awt.headless=true -jar AEM_6.2_Quickstart.jar -unpack

# Start options (START_OPTS)
ENV CQ_FOREGROUND y
ENV CQ_VERBOSE    y
ENV CQ_NOBROWSER  y
ENV CQ_PORT       4502
ENV CQ_RUNMODE    "dev,author"
#ENV CQ_JVM_OPTS "-Xmx2048m -Djava.awt.headless=true -Xdebug -Xrunjdwp:transport=dt_socket,server=y,address=8002,suspend=n"
ENV CQ_JVM_OPTS "-server -Xmx1524M -Xms512M"

# TODO: export debug mode as a parameter

# Open ports
EXPOSE 4502 8002

# Camera, light, action!
CMD crx-quickstart/bin/quickstart
