FROM centos
FROM tomcat
FROM jenkins

USER root

RUN apt-get update && apt-get install -y \
	apt-utils \
	vim \
	--no-install-recommends && rm -rf /var/lib/apt/lists/*


# Prep Jenkins Directories
RUN mkdir /var/log/jenkins
RUN mkdir /var/cache/jenkins
RUN chmod 777 /var/log/jenkins
RUN chmod 777 /var/cache/jenkins

ENV JAVA_OPTS="-Xmx8192m"
ENV JENKINS_OPTS="--handlerCountMax=300 --logfile=/var/log/jenkins/jenkins.log --webroot=/var/cache/jenkins/war"

ADD . / /app/

WORKDIR /app

EXPOSE 8080
EXPOSE 50000
