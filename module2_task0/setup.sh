#!/bin/bash
## Create an empty directory and go into
mkdir awesome-api
cd awesome-api

## Install Go
apt update
apt install golang-go -y

## Initialize the Golang project with a custom identifier
go mod init github.com/GABETROLL/awesome-api
