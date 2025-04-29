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

# Task 6: Installing Git
echo "Installing Git..."
sudo yum install -y git

# Task 7: Installing Maven
echo "Installing Maven..."
sudo yum install -y maven

# Task 8: Installing Docker
echo "Installing Docker..."
sudo yum install -y docker

# Task 9: Starting Docker service
echo "Starting Docker service..."
sudo systemctl start docker

echo "All tasks completed successfully."
