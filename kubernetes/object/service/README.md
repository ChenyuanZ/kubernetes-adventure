# Service

A Kubernetes `Service` is an abstraction which defines a logical set of `Pods` and a policy by which to access them. The set of `Pods` targeted by a `Service` is (usually) determined by a `Label Selector`.

* For Kubernetes-native applications, Kubernetes offers a simple **[Endpoints](../endpoint/README.md) API** that is updated whenever the set of `Pods` in a `Service` changes.
* For non-native applications, Kubernetes offers a **virtual-IP-based bridge** to `Services` which redirects to the backend `Pods`.


# Concetps

* **ClusterIP**
* **[Endpoints](../endpoint/README.md)**: a Kubernetes object.
* **ExternalName**: a service type.
* **[kube-proxy](../../component/kube_proxy.md)**: a Kubernetes component.
* **LoadBalancer**: a service type.
* **NodePort**
* **Services**: a Kubernetes object.
* **Service proxy**


# Reference

1. https://kubernetes.io/docs/concepts/services-networking/service/
2. https://cloudnativelabs.github.io/post/2017-05-10-kube-network-service-proxy/
