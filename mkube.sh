#!/bin/bash

# First-time installation for Windows 10 Pro.
# minikube start --vm-driver=hyperv --hyperv-virtual-switch=Minikube

minikube start &&
minikube status &&
minikube dashboard
