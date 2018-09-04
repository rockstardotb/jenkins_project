# make build
build:
	docker build -t jenkins_pipeline .
# make run
run:
	docker run -i -t --name jenkins_pipeline -p 8080:8080 -p 50000:50000 --mount source=jenkins-log,target=/var/log/jenkins --mount source=jenkins-data,target=/var/jenkins_home -d jenkins_pipeline /bin/bash
# make exec
exec:
	docker exec -i -t jenkins_pipeline /bin/bash
# stop
stop:
	docker stop jenkins_pipeline
# rm
remove:
	docker rm jenkins_pipeline
