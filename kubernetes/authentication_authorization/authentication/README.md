# Authentication

Kubernetes has two types of users: service account, and normal users.

* **Normal Users**: managed by third party. Kubernetes *doesn not* have user object.
* **[Service Accounts](../../object/serviceaccount/README.md)**: managed by Kubernetes.

API requests are

* normal user requests
* service account requests
* anonymous requests



# Reference

* https://kubernetes.io/docs/reference/access-authn-authz/authentication/#openid-connect-tokens
