#!/bin/bash
## Create an empty directory and go into
mkdir awesome-api
cd awesome-api

## Install Go
apt update
apt install golang-go -y

## Get the mux package dependency
go get initgithub.com/gorilla/mux
## Initialize the Golang project with a custom identifier
go mod init github.com/GABETROLL/awesome-api
