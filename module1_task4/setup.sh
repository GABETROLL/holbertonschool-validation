#!/bin/bash
# Update package lists just-in-case
apt-get update

# Install required packages without '[y/n]' prompt
apt-get install -y make wget
# We need wget for downloading a required HUGO version.

# Install the required version of Hugo (0.84.0)
HUGO_VERSION=0.84.0
wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.deb
dpkg -i hugo_${HUGO_VERSION}_Linux-64bit.deb
rm hugo_${HUGO_VERSION}_Linux-64bit.deb

# Build the website
make build
