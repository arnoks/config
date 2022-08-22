#!/usr/bin/bash 
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

# Add required dependencies for the jenkins package
sudo dnf install -y chkconfig java-devel
sudo dnf install -y jenkins
sudo systemctl daemon-reload
sudo systemctl start jenkins

sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo "paste above default password to the jenkins setup screen on port 8080"
echo "Staging: http://vn401dev.clear.dev.fra.aws.dbgcloud.io:8080"
echo "Prod: http://vn401deployer.svc.dbgcloud.io:8080/"
mkdir -p build
touch build/jenkins_config
