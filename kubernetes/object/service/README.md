# Service

A Kubernetes `Service` is an abstraction which defines a logical set of `Pods` and a policy by which to access them. The set of `Pods` targeted by a `Service` is (usually) determined by a `Label Selector`.

`Services` are a “layer 4” (TCP/UDP over IP) construct.


## Accessing services

* For Kubernetes-native applications, Kubernetes offers a simple **[Endpoints](../endpoint/README.md) API** that is updated whenever the set of `Pods` in a `Service` changes.
* For non-native applications, Kubernetes offers a **virtual-IP-based bridge** (through [`kube-proxy`](../../component/kube_proxy.md)) to `Services` which redirects to the backend `Pods`.

  <a href="http://www.youtube.com/watch?feature=player_embedded&v=RXNKhKJxRL8
  " target="_blank"><img src="http://img.youtube.com/vi/RXNKhKJxRL8/0.jpg"
  alt="virtual-IP-based bridge demo" width="240" height="180" border="10" /></a>


## Discovering services

* **Environment variables**: This does imply an ordering requirement - any `Service` that a `Pod` wants to access must be created before the `Pod` itself, or else the environment variables will not be populated.
* **[DNS](../../component/add_on/dns_server.md)**: The DNS server watches the Kubernetes API for new Services and creates a set of DNS records for each. It is the only way to access services of type `ExternalName`.
  - `Pod` in same namespace lookup: `<service-name>`
  - `Pod` in difference namespace lookup: `<service-name>.<namespace>`


## Service types

* `ClusterIP`: Exposes the service on a cluster-internal IP. Choosing this value makes the service only reachable from within the cluster. This is the default `ServiceType`.
* `NodePort`: Exposes the service on each Node’s IP at a static port (the `NodePort`). A `ClusterIP` service, to which the `NodePort` service will route, is automatically created. You’ll be able to contact the `NodePort` service, from outside the cluster, by requesting `<NodeIP>:<NodePort>`.
* `LoadBalancer`: Exposes the service externally using a cloud provider’s load balancer. `NodePort` and `ClusterIP` services, to which the external load balancer will route, are automatically created.
* `ExternalName`: Maps the service to the contents of the externalName field (e.g. foo.bar.example.com), by returning a CNAME record with its value. No proxying of any kind is set up. This requires version 1.7 or higher of `kube-dns`.



# Concetps

* **ClusterIP**
* **CNAME**
* **[Endpoints](../endpoint/README.md)**: a Kubernetes object.
* **ExternalName**: a service type.
* **[iptables proxy](../../component/kube_proxy.md)**: a kube-proxy mode. It became the default operating mode since Kubernetes v1.2.
* **[ipvs proxy](../../component/kube_proxy.md)**: a kube-proxy mode.
* **[kube-proxy](../../component/kube_proxy.md)**: a Kubernetes component.
* **LoadBalancer**: a service type.
* **NodePort**
* **Services**: a Kubernetes object.
* **Service proxy**
* **[userspace proxy](../../component/kube_proxy.md)**: a kube-proxy mode.


# Reference

1. https://kubernetes.io/docs/concepts/services-networking/service/
2. https://cloudnativelabs.github.io/post/2017-05-10-kube-network-service-proxy/ # TODO
