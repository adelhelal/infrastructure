kubectl apply -f secret.yaml
kubectl apply -f database-deployment.yaml
kubectl apply -f database-service.yaml

kubectl apply -f configMap.yaml
kubectl apply -f web-deployment.yaml
kubectl apply -f web-service.yaml

# kubectl delete -f deployment.yaml
# kubectl delete -f service.yaml

# kubectl get all

## pod
# kubectl get pod
# kubectl get pod -o wide
# kubectl describe pod [pod-name]
# kubectl logs [pod-name]
# kubectl exec -it [pod-name] -- bin/bash

## service
# kubectl get service
# kubectl describe service [service-name]
# minikube service [service-name] # assigns external IP to service

## namespace
# kubectl create namespace [namespace-name]
