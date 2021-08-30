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
echo "http://vn401dev.clear.dev.fra.aws.dbgcloud.io:8080"
