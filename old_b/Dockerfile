FROM centos
FROM jenkins
FROM tomcat

USER root

RUN apt-get update && apt-get install -y \
	apt-utils \
	vim \
	--no-install-recommends && rm -rf /var/lib/apt/lists/*

ADD . / /app/

WORKDIR /app
EXPOSE 8080
