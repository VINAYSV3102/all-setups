#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.5.1 .zip
unzip sonarqube-10.5.1 .zip
amazon-linux-extras install java-openjdk11 -y
useradd sonar
chown sonar:sonar sonarqube-10.5.1  -R
chmod 777 sonarqube-10.5.1  -R
su - sonar

#run this on server manually
#sh /opt/sonarqube-10.5.1 /bin/linux/sonar.sh start
#echo "user=admin & password=admin"
