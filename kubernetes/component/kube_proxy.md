# kube-proxy

The Kubernetes network proxy runs on each node. This reflects `services` as defined in the Kubernetes API on each node and can do simple TCP, UDP, and SCTP stream forwarding or round robin TCP, UDP, and SCTP forwarding across a set of backends [1].

`kube-proxy` enables the Kubernetes `service` abstraction by maintaining network rules on the host and performing connection forwarding [2].


# Reference

1. https://kubernetes.io/docs/reference/command-line-tools-reference/kube-proxy/
2. https://kubernetes.io/docs/concepts/overview/components/#kube-proxy
