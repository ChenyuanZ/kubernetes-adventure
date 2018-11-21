# MetaController


# Tips

* Whenever `Metacontroller` asks for a resource name, you should use the canonical, lowercase, plural form (e.g. replicasets).
* Kubernetes resources and kinds must have a 1-to-1 correspondence within a given API group, the resource name and kind are often used interchangeably in Kubernetes documentation. The kind is often the same as the singular resource name, except that it’s written in UpperCamelCase.


# Installation

```
kubectl apply -f https://raw.githubusercontent.com/GoogleCloudPlatform/metacontroller/master/manifests/metacontroller-rbac.yaml
kubectl apply -f https://raw.githubusercontent.com/GoogleCloudPlatform/metacontroller/master/manifests/metacontroller.yaml
```


# Reference

* https://metacontroller.app/
* https://github.com/GoogleCloudPlatform/metacontroller
