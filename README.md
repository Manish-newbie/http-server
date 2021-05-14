## About
This is a basic kubernetes setup to deploy a nodejs application to minikube using simple yaml file. All the commands are specified in `Makefile` and can be executing use `make` command. Eg: to build docker images use `make build-image`. Similarly other commands are specified to deploy it to kube cluster or to scale it.

## Requirement
Make sure you have a local minikube cluster or a remote cluster already configured into your machine.

## How to build docker image
Run `make build-image`

## How to k8s deployment
Run `make deploy`

By default it'll launch 3 pods and use can use `make scale` to launch 2 more containers.
