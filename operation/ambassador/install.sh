#!/bin/bash

helm repo add datawire https://www.getambassador.io
helm install --name cz-ambassador datawire/ambassador --namespace cz-ambassador

kubectl port-forward $(kubectl get pods -n cz-ambassador -l app=ambassador -o jsonpath='{.items[0].metadata.name}' ) -n cz-ambassador 8001:8877

# http://localhost:8001/ambassador/v0/diag/?xml=true
