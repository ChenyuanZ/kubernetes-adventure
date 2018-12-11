# Overview

* `Kubernetes Master`: a collection of three processes `kube-apiserver`, `kube-controller-manager`, and `kube-scheduler`. The master maintains the actual and desired state of the cluster using `etcd`, lets users and nodes change the desired state via the `kube-apiserver`, runs controllers that reconcile these states, and the `kube-scheduler` assigns pods to a node to run.
* `Kubernetes Node`: runs two processes `kubelet` and `kube-proxy`. Every node has a container runtime, a Kubernetes node agent, a networking proxy, and a resource monitoring service.
* `etcd`: runs on the master and every node.


# Reference

* https://kubernetes.io/docs/concepts/
