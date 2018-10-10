# Network Policies

A network policy is a specification of how groups of pods are allowed to communicate with each other and other network endpoints [1]. It achieves this by using `label` and `selector`.

> `NetworkPolicy` requires a network plugin that supports it to take impact.


# Configuration

* https://kubernetes.io/docs/concepts/services-networking/network-policies/#the-networkpolicy-resource
* https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.12/#networkpolicy-v1-networking-k8s-io


# Concepts

* `Ingress`: incoming network traffic
* `Egress`: outgoing network traffic


# Reference

1. https://kubernetes.io/docs/concepts/services-networking/network-policies/
2. https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.12/#networkpolicy-v1-networking-k8s-io
3. https://kubernetes.io/docs/tasks/administer-cluster/declare-network-policy/ **TODO**
