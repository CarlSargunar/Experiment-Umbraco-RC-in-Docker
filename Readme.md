# Running Umbraco 11 Release Candidate on Docker

This repository contains a Docker Compose file that will run Umbraco 11 Release Candidate on Docker, running the RC version of .Net 7.

To run this, you will need to have Docker installed on your machine. You can download Docker Desktop for Windows here: https://hub.docker.com/editions/community/docker-ce-desktop-windows.

To build the Docker image open a command prompt in the folder where you have downloaded the file and run the following command:

    docker build -t umbraco11rc .

To run the Docker image, run the following command:

    docker run -p 8080:80 umbraco11rc
