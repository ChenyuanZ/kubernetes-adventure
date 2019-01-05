# Useful Commands

* `kubectl <command> <resource> <options>`
* `kubectl <command> [--help | -h]`
* `kubectl explain <object>`
* `kubectl explian <object>.<sub-object>`: e.g. `kubectl explain po.spec.volumes`
* `kubectl explain <object> --recursive`
* `kubectl get <resource> -o yaml --export`
* `kubectl run busybox --image=busybox --restart=Never --dry-run -o yaml > pod.yaml`
* `kubectl run busybox --image=busybox --restart=Never --dry-run -o yaml -- /bin/sh -c 'echo hello; sleep 5; echo world' > pod.yaml`
* `kubectl run busybox --image=busybox --replicas=3 --dry-run -o yaml > deploy.yaml`
* `kubectl run busybox --image=busybox --restart=OnFailure --dry-run -o yaml > job.yaml`
* `kubectl run busybox --image=busybox --restart=OnFailure --schedule='*/5 * * * *' --dry-run -o yaml > cronjob.yaml`
* `kubectl expose deploy busybox --port=80 --targetPort=8080 --dry-run -o yaml > svc.yaml`
* `kubectl get all [--all-namespaces]`
* `kubectl describe all [--all-namespaces]`
* `kubectl exec -it <pod> [-c <container>] [/bin/bash | /bin/sh | bash | sh]`
* `kubectl rollout history deploy/<deploy> --revision=<revision>`
* `kubectl get po -w`
* `kubectl describe quota -n <namespace>`
* `kubectl describe nodes`
* `kubectl logs [-f] [--previous]`


# Concepts

* `context`: user profile to a Kubernetes cluster.
