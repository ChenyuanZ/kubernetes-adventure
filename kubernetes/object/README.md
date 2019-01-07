# Additional Tool for Object

## Namespace

`Namespace` allows adim to subdivide a single Kubernetes cluster into several virtual clusters. It ensures resource limits and isolation.

It allows admin to set `ResourceQuota` to define resource limits.

To specify `namespace`, simply run `kubectl <cmd> -n <namespace>`, or `kubectl config set-context <context-name> --namespace=<namespace>`.


## Label

Labels are defined in `pod.metadata.labels` (slightly varies for `Deployment`, `Service`, and etc). Labels are meant to be precise. They are indexed and stored as hashmap.


# Selector

To select by labels, use `kubectl` with flag `-l` or `--selector`. Queries can be filter on a set of values using `in`, `notIn`, and `exists`.
