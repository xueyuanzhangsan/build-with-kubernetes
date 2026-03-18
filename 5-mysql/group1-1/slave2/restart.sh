#!/bin/bash

kubectl delete cm slave-cm -n secondslave
kubectl create cm slave-cm --from-file=my.cnf -n secondslave

kubectl delete -f mysql-slave.yaml -n secondslave
kubectl apply -f mysql-slave.yaml -n secondslave


