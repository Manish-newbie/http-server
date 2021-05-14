help:
	echo "Help"

build-image:
	eval $(minikube docker-env) && docker build . -t http-server

run-container:
	docker run --rm -p 2020:2020 --name http-server-instance http-server

stop-container:
	docker stop http-server-instance

down:
	kubectl delete -f deployment.yaml

deploy:
	kubectl apply -f deployment.yaml

service-url:
	minikube service http-service --url

scale:
	kubectl scale deployment http-server-deployment --replicas=5

test:
	while true; do curl http://127.0.0.1:54785/ && echo "" && sleep 1; done