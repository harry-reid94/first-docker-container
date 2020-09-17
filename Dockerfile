#Base image layer
FROM centos:latest
#Install dependencies
RUN yum update -y && yum install -y python3
#Expose ports
EXPOSE 80
EXPOSE 5000
#Map directory
ADD ./app /usr/local/app
#Configuration environment variables
ENV APP_PATH /usr/local/app
#Run with bash shell
SHELL ["/bin/bash", "-c"]