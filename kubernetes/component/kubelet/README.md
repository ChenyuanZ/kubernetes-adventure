# Kubelet

`Kubelet` is a process that runs on each node that takes responsibility for the state of that node. It starts and stops containers as directed by the master, and ensures that its containers remain healthy. It will also track the state of each of its `pods`, and if a `pod` is not in its desired state, it will be redeployed.
