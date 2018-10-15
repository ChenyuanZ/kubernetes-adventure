# Service Account

`Service Accounts` are bound to specific `namespaces`, and created automatically by the API server or manually through API calls. `Service accounts` are tied to a set of credentials stored as `Secrets` (secret type: `kubernetes.io/service-account-token`), which are mounted into `pods` allowing in-cluster processes to talk to the Kubernetes API.


# Example

```
apiVersion: v1
kind: ServiceAccount
metadata:
  name: dev
  namespace: default
```


# Reference

* https://kubernetes.io/docs/reference/access-authn-authz/authentication/#users-in-kubernetes
