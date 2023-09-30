[![CircleCI](https://dl.circleci.com/status-badge/img/gh/github-1d/Project_4_ML/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/github-1d/Project_4_ML/tree/main)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

1. ## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

2. ## Installations Required

* Install Kubernetes
* Connect to Your Cloud9 Environment:
* Open your AWS Cloud9 environment and access the terminal.

* Download kubectl Binary:
* Download the kubectl binary from the official Kubernetes GitHub repository:

wget https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
* This command fetches the latest stable kubectl binary for Linux.

* Make kubectl Executable:
* Make the kubectl binary executable:

chmod +x kubectl

* Move kubectl to a Directory in the PATH:
* Move the kubectl binary to a directory that is included in your PATH. For example, move it to /usr/local/bin:

sudo mv kubectl /usr/local/bin/
* This command moves the kubectl binary to /usr/local/bin, which is typically in the PATH.

* Verify kubectl Installation:
* Verify that kubectl is installed correctly by checking its version:

kubectl version --client

* Install Minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
* Make the Minikube binary executable:

chmod +x minikube-linux-amd64
* Move the Minikube binary to a directory included in your PATH (e.g., /usr/local/bin):

sudo mv minikube-linux-amd64 /usr/local/bin/minikube
* Verify Minikube Installation:
* Verify that Minikube is installed correctly by checking its version:

minikube version

### Running Application

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh` to containerise app in docker
3. Run './make_prediction.sh' to test predictions in docker

### Kubernetes Steps

4. Run './upload_docker.sh' to upload docker image
5. Run minikube start to configure minikube
6. Run './run_kubernetes.sh' to deploy kubernetes
7. Run './make_prediction.sh' to test predictions once pod is running

## Clean up

1. Run minikube delete to clean the cluster
