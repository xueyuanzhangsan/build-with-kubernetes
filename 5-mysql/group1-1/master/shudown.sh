#!/bin/bash

kubectl delete cm master-cm -n production

kubectl delete -f mysql-master.yaml -n production


