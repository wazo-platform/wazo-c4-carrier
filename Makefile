.PHONY: dockerfile
dockerfile:
	docker build --no-cache -t wazopbx/wazo-c4-carrier:latest -f Dockerfile .
