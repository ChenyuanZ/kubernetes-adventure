# Pod Security Policy

A `Pod Security Policy` is a cluster-level resource that controls security sensitive aspects of the pod specification. It enables fine-grained authorization of `pod` creation and updates. It is enforced by enabling the [`admission controller`](../component/apiserver/admission_controller.md) in `apiserver`.

# Reference

* https://kubernetes.io/docs/concepts/policy/pod-security-policy/
