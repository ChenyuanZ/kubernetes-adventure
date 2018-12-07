# Useful Commands

* `kubectl <command> <resource> <options>`
* `kubectl <command> --help`
* `kubectl explain <object>`
* `kubectl explian <object>.<sub-object>`: e.g. `kubectl explain po.spec.volumes`
* `kubectl explain <object> --recursive`
* `kubectl get <resource> -o yaml --export`
* `kubectl run redis-deploy --image=redis [--dry-run]`: to get a template
* `kubectl get all [--all-namespaces]`
* `kubectl describe all [--all-namespaces]`
* `kubectl exec -it <pod> [-c <container>] [/bin/bash | /bin/sh | bash]`


# Concepts

* `context`: user profile to a Kubernetes cluster.
