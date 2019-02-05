# Pod

A pod (as in a pod of whales or pea pod) is a group of one or more containers (such as Docker containers), with shared storage/network, and a specification for how to run the containers.


# Useful Commands

* Get pod IP: `kubectl describe pod <pod-name> | grep IP | sed -E 's/IP:[[:space:]]+//'`


# Operation

When a `pod`'s state changes, the `kubelet` process on that node updates the `status` - `phase` field in the `pod`'s `etcd` entry. A pod phase can be `Pending`, `Running`, `Succeeded`, `Failed`, or `Unknown`.

To override image entrypoints:

* `pod.spec.containers.command`: replaces image's `ENTRYPOINT`.
* `pod.spec.containers.args`: replaces image's `CMD`.


## Security Contexts

`Security Context` can be defined at the pod level or at the container level. Fields examples:

* `pod.spec.securityContext.runAsUser`: user ID that is used to run the pod or container.
* `pod.spec.securityContext.fsGroup`: group ID that is used for filesystem access.


## Multi-container Pod

When to use multi-container `pod`:
* Containers have the exact same lifecycle.
* Containers share filesystem resources.
* Containers must run on the same node.
* Simplify container communication:
  * network request through `localhost`
  * shared volumes
  * inter-process communication (semaphores or shared memory)

Three patterns for multi-container `pod`:
* `Sidecar`: sidecar can be logging utilities, sync services, watchers, and monitoring agents.
* `Adapter`: adapter pattern is used to standardize and normalize application output or monitoring data for aggregation.
* `Ambassador`: a proxy that allows other containers to connect to a port on localhost while the ambassador container proxies these requests to the external world.


# Volume

`Volumes` in `pod` is defined in `pod.spec.volumes`. `Volume` mounts in container is defined in `pod.spec.containers.volumeMounts`.


# Reference

* https://kubernetes.io/docs/concepts/workloads/pods/pod/
