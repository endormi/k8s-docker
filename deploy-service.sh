#!/bin/bash

kubectl apply -f deployment.yaml
kubectl get deployment

kubectl apply -f service.yaml
kubectl get service
