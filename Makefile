# make build
build:
	docker build -t jenkins_pipeline .
# make run
run:
	docker run -i -t --name jenkins_updated -v /Users/alexisasexystud/Desktop/jenkins_pipeline:/app -p 8080:8080 -d jenkins_updated /bin/bash
# make exec
exec:
	docker exec -i -t jenkins_updated /bin/bash
# stop
stop:
	docker stop jenkins_updated
# rm
remove:
	docker rm jenkins_updated
