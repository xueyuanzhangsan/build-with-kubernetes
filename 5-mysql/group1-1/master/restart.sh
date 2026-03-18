#!/bin/bash

kubectl delete cm master-cm -n production
kubectl create cm master-cm --from-file=my.cnf -n production

kubectl delete -f mysql-master.yaml -n production
kubectl apply -f mysql-master.yaml -n production


