#!/bin/bash

echo "Hello! This script is for Course 6130."
echo "Checking Docker version and updating if it's version 19 or older."

# Get Docker version
DOCKER_VERSION=$(docker --version | grep -o '[0-9]*\.[0-9]*\.[0-9]*')
# Extract the major version
MAJOR_VERSION=$(echo $DOCKER_VERSION | cut -d. -f1)

# Check if the major version is less than or equal to 19
if [ "$MAJOR_VERSION" -le 19 ]; then
    echo "Docker version is $DOCKER_VERSION, which is older than version 20. An update is recommended."
    read -p "Do you want to update Docker now? (y/n): " response
    if [[ "$response" =~ ^[Yy]$ ]]; then
        # Update Docker
        # Assuming the use of a Debian-based system (like Ubuntu)
        sudo apt-get update
        sudo apt-get install -y docker-ce docker-ce-cli containerd.io
        echo "Docker has been updated to the latest version."
    else
        echo "Update cancelled by the user."
    fi
else
    echo "Docker version is $DOCKER_VERSION, which is up to date."
fi

