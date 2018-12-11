# Secrets

* Secrets are always base64 encoded.
* Kubernetes uses `tmpfs` to store `secrets` on nodes.

`Secret` can be mounted as volumes: `pod.spec.volumes.secret.secretName` (it is decoded in the mounted path).


# Potiential Issue

* `etcd` stores secrets in plaintext.
* If there're multiple replicas of `etcd`, data is not necessarily replicated over SSL.
