# Pod

A pod (as in a pod of whales or pea pod) is a group of one or more containers (such as Docker containers), with shared storage/network, and a specification for how to run the containers.


# Useful Commands

* Get pod IP: `kubectl describe pod <pod-name> | grep IP | sed -E 's/IP:[[:space:]]+//'`


# Reference

* https://kubernetes.io/docs/concepts/workloads/pods/pod/
