

all: build/user_config build/jenkins_config build/moby_config ./terraform_config.sh

build/user_config:
	./git_config.sh
	./user_config.sh	

build/jenkins_config:
	./jenkins_config.sh	

build/moby_config:
	./moby_config.sh

build/terraform_config:
	./terraform_config.sh


