# DaemonSet

A `DaemonSet` ensures that all (or some) `Nodes` run a copy of a `Pod`. As nodes are added to the cluster, `Pods` are added to them. As nodes are removed from the cluster, those `Pods` are garbage collected. Deleting a `DaemonSet` will clean up the `Pods` it created.


# Reference

* https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
