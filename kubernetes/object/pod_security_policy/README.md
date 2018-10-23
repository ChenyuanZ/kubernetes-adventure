# Pod Security Policy

A `Pod Security Policy` is a cluster-level resource that controls security sensitive aspects of the pod specification. It enables fine-grained authorization of `pod` creation and updates. It is enforced by enabling the [`admission controller`](../component/apiserver/admission_controller.md) in [`apiserver`](../component/apiserver/README.md):

```
kube-apiserver --admission-control=PodSecurityPolicy
```


# Authorizing Policies

Once `PodSecurityPolicy` is enabled, `ServiceAccount` that doesn't have authorization can't create or update pods. To authorize a `ServiceAccount`, one can use `RBAC` `RoleBinding` or `ClusterRoleBinding`. Please follow examples below.

Create `ServiceAccount`
```
apiVersion: v1
kind: ServiceAccount
metadata:
  name: fake-user
  namespace: psp-example
```

Create `PodSecurityPolicy`
```
apiVersion: policy/v1beta1
kind: PodSecurityPolicy
metadata:
  name: example
spec:
  privileged: false  # Don't allow privileged pods!
  # The rest fills in some required fields.
  seLinux:
    rule: RunAsAny
  supplementalGroups:
    rule: RunAsAny
  runAsUser:
    rule: RunAsAny
  fsGroup:
    rule: RunAsAny
  volumes:
  - '*'
```
> For more information on `PodSecurityPolicy` conriguration, please refer to https://kubernetes.io/docs/concepts/policy/pod-security-policy/#policy-reference.

Create `Role`
```
apiVersion: rbac.authorization.k8s.io/v1beta1
kind: Role
metadata:
  name: psp:unprivileged
  namespace: psp-example
rules:
- apiGroups:
  - extensions
  resourceNames:
  - example
  resources:
  - podsecuritypolicies
  verbs:
  - use
```

Create `RoleBinding`
```
apiVersion: rbac.authorization.k8s.io/v1
kind: RoleBinding
metadata:
  name: fake-user:psp:unprivileged
  namespace: psp-example
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: Role
  name: psp:unprivileged
subjects:
  - kind: ServiceAccount
    name: fake-user
    namespace: psp-example
```

> FYI, if one doesn't specify which service account to use for `ReplicaSet`, Kubernetes uses `default`. In this case, one should bind the `Role` to `default` also.


# Reference

* https://kubernetes.io/docs/concepts/policy/pod-security-policy/
