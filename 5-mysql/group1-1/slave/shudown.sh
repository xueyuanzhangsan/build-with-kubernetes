#!/bin/bash

kubectl delete cm slave-cm -n production

kubectl delete -f mysql-slave.yaml -n production


