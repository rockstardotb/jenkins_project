FROM centos
FROM jenkins

USER root

RUN apt-get update && apt-get install -y \
	apt-utils \
	vim \
	--no-install-recommends && rm -rf /var/lib/apt/lists/*

ADD . / /app/

WORKDIR /app
EXPOSE 8080
