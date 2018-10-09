# Service

A Kubernetes `Service` is an abstraction which defines a logical set of `Pods` and a policy by which to access them. The set of `Pods` targeted by a `Service` is (usually) determined by a `Label Selector`.

* For Kubernetes-native applications, Kubernetes offers a simple **[Endpoints](../endpoint/README.md) API** that is updated whenever the set of `Pods` in a `Service` changes.
* For non-native applications, Kubernetes offers a **virtual-IP-based bridge** to `Services` which redirects to the backend `Pods`.


# Concetps

* **ClusterIP**
* **[Endpoints](../endpoint/README.md)**: a Kubernetes object.
* **ExternalName**: a service type.
* **[kube-proxy](https://kubernetes.io/docs/reference/command-line-tools-reference/kube-proxy/)**: The Kubernetes network proxy runs on each node. This reflects `services` as defined in the Kubernetes API on each node and can do simple TCP, UDP, and SCTP stream forwarding or round robin TCP, UDP, and SCTP forwarding across a set of backends. `kube-proxy` enables the Kubernetes `service` abstraction by maintaining network rules on the host and performing connection forwarding [3].
* **LoadBalancer**: a service type.
* **NodePort**
* **Services**: a Kubernetes object.
* **Service proxy**


# Reference

1. https://kubernetes.io/docs/concepts/services-networking/service/
2. https://cloudnativelabs.github.io/post/2017-05-10-kube-network-service-proxy/
3. https://kubernetes.io/docs/concepts/overview/components/#kube-proxy
