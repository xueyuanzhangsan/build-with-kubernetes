#!/bin/bash

kubectl delete cm slave-cm -n production
kubectl create cm slave-cm --from-file=my.cnf -n production

kubectl delete -f mysql-slave.yaml -n production
kubectl apply -f mysql-slave.yaml -n production


