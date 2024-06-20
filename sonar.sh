#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.5.50698.zip .zip
unzip sonarqube-8.9.5.50698.zip .zip
amazon-linux-extras install java-openjdk11 -y
useradd sonar
chown sonar:sonar sonarqube-8.9.5.50698.zip  -R
chmod 777 sonarqube-8.9.5.50698.zip  -R
su - sonar

#run this on server manually
#sh /opt/sonarqube-8.9.5.50698.zip /bin/linux/sonar.sh start
#echo "user=admin & password=admin"
