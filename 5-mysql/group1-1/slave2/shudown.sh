#!/bin/bash

kubectl delete cm slave-cm -n secondslave

kubectl delete -f mysql-slave.yaml -n secondslave


