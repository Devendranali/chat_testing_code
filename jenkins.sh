#!/bin/bash

# Task 1: Installing Java
echo "Installing Java 17 Amazon Corretto..."
sudo yum install -y java-17-amazon-corretto.x86_64

# Task 2: Getting Jenkins repo file
echo "Downloading Jenkins repo..."
sudo curl -o /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo

# Task 3: Importing Jenkins RPM key
echo "Importing Jenkins GPG key..."
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io-2023.key

# Task 4: Installing Jenkins
echo "Installing Jenkins..."
sudo yum install -y jenkins

# Task 5: Starting Jenkins service and enabling it on boot
echo "Starting Jenkins service and enabling it to start on boot..."
sudo systemctl start jenkins
sudo systemctl enable jenkins

echo "All tasks completed successfully."
