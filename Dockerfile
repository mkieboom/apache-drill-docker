# Apache Drill v1.1.0 - embedded mode
#
# VERSION 0.1 - not for production, use at own risk
# General instructions: https://drill.apache.org/docs/install-drill-introduction/
# 


#
# Using CentOS as the base image
#
FROM centos

MAINTAINER mkieboom @mapr.com

#
# Prerequisite: Install Java
# http://doc.mapr.com/display/MapR/Preparing+Each+Node#PreparingEachNode-java
#
RUN yum install -y wget tar java-1.7.0-openjdk-devel

#
# Download and Install Apache Drill
# https://drill.apache.org/docs/installing-drill-on-linux-and-mac-os-x/
#
RUN mkdir -p /opt/drill

RUN wget http://getdrill.org/drill/download/apache-drill-1.1.0.tar.gz
RUN tar -xvzf apache-drill-1.1.0.tar.gz -C /opt/drill

#
# Start Apache Drill in embedded mode
# https://drill.apache.org/docs/starting-drill-on-linux-and-mac-os-x/
#
ADD bootstrap.sh /etc/bootstrap.sh
RUN chown root:root /etc/bootstrap.sh
RUN chmod 700 /etc/bootstrap.sh
ENV BOOTSTRAP /etc/bootstrap.sh

#
# Expose the Apache Drill Web UI 
# https://drill.apache.org/docs/storage-plugin-registration/
#
EXPOSE 8047
