.PHONY: dockerfile
dockerfile:
	make sipp-dockerfile
	make lb-dockerfile

.PHONY: sipp-dockerfile
sipp-dockerfile:
	docker build -t wazoplatform/wazo-c4-carrier:latest -f ./sipp/Dockerfile sipp

.PHONY: lb-dockerfile
lb-dockerfile:
	docker build -t wazoplatform/wazo-c4-carrier-lb:latest -f ./load-balancer/Dockerfile load-balancer
