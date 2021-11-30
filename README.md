# Udacity Devops Nanodegree - Capstone Project
## Introduction
The goal of this project is to demonstrate how to perform a Kubernetes deploy through a Continuous Integration/Contiuous Deployment (CI/CD) pipeline.

## Tools
For this project, the following applications and services have been used:

### CI/CD Pipeline
Github - Code repository
CircleCI - CI/CD online service
Docker Hub - Container repository that receives images built in CircleCI and provides images to the Kubernetes cluster
AWS Elastic Kubernetes services - Host Kubernetes deployment

### Local Tools
Git - Retrieve and push code from and to Github
Docker - Local testing of containers
make - Linux tool to automate tasks via configuration files
kubectl - Tool to manage Kubernetes

## Pipeline description
For this project, a Github public repository has been created. It contains all the code as well as the deliverables for this project.

The Github repository is connected to CircleCI and every time changes are commited to the repo, a new CircleCI build is triggered. The pipeline contains the following steps:
* Checkout code from Github
* Lint code (Python and Dockerfile)
* Create Docker image using Python base imagen web application
* Push image to Docker Hub
* Update Kubernetes container with image
* Test Kubernetes container after update to ensure its availability

## Deliverables
The Github repo contains the following:
* app.py - Web application created using Python + Flask.
* Dockerfile - Describes the Docker images created in this project based on the web application.
* Makefile - Contains instructions to install the applications and dependencies required for this project. It also contains instructions to lint both the application code and the Dockerfile code.
* requirements.txt - Python modules required for the project.
* .circleci/config.yml - CircleCI configuration file containing the description of the CI/CD pipeline.
* deployment.yml - Cloudformation EKS configuration file. Defines a Kubernetes cluster, the Docker image that will be pulled (see above) and the type of updates (RollingUpdate).
* screenshots - folder containing screenshots of:
+ a failed lint operation 
+ a successful lint operation 
+ application running in EKS 
+ application running in EKS after an update

EKS external URL where the Flask application is running: http://ae92011da09ac4a3e9a4e54f961de5d3-697290224.us-west-2.elb.amazonaws.com/

Docker repository: https://hub.docker.com/r/pgcorriente/udacity-devops-capstone-tmp
