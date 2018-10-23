# RBAC

Role-based access control (`RBAC`) is a method of regulating access to computer or network resources based on the roles of individual users within an enterprise.

A `RoleBinding` or ClusterRoleBinding binds a role to subjects. Subjects can be groups, users or service accounts.

* `User`: represented by strings. It is provided by authentication modules.
* `Group`: represented by strings. It is provided by authentication modules.
* `ServiceAccount`: have usernames with the `system:serviceaccount:` prefix and belong to groups with the `system:serviceaccounts:` prefix



# Configuration

To enable `RBAC`, start the apiserver with `--authorization-mode=RBAC`.


# Reference

* https://kubernetes.io/docs/reference/access-authn-authz/rbac/
* https://www.cncf.io/blog/2018/08/01/demystifying-rbac-in-kubernetes/
*
