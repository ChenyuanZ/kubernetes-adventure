# Authorization

Kubernetes authorizes API requests using the API server. It evaluates all of the request attributes against all policies and allows or denies the request. All parts of an API request must be allowed by some policy in order to proceed. This means that permissions are denied by default.

Kubernetes supports 4 Authorization Models
* [Node](node.md)
* [ABAC](abac.md)
* [RBAC](rbac.md)
* [Webhook](webhook.md)


# Useful Commands

* Run command as a service account: `kubectl --as=system:serviceaccount:<namespace>:<service-account> -n <namespace>`
* Get events history with a service account: `kubectl get events`
* Check API Access: `kubectl auth can-i <verb> <resource> -n <namespace>`


# Privilege escalation via pod creation

A user granted permission to create `pods` (or controllers that create pods) in the namespace can: read all secrets in the namespace; read all config maps in the namespace; and impersonate any service account in the namespace and take any action the account could take. This applies regardless of authorization mode.


# Reference

* https://kubernetes.io/docs/reference/access-authn-authz/authorization/
