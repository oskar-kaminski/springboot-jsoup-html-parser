#!/usr/bin/env bash

helm delete --namespace dev my-mongodb

kubectl delete --namespace dev -f yaml-files/game-score-api-deployment.yaml
kubectl delete --namespace dev -f yaml-files/game-score-collector-job.yaml
kubectl delete --namespace dev -f yaml-files/game-score-collector-cronjob.yaml

kubectl delete namespace dev