

rustdev: Dockerfile 
	docker build --env-var user=$(USER)  -t arnoks/rustdev .
