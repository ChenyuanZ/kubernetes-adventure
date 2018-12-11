# ConfigMap

Each entry in `configmap.data` dictionary will become a new file in the mounted directory, and the contents of each file will be the value.

`ConfigMap` can be mounted as volumes or environment variables:

* `pod.spec.volumes.configMap.name`
* `pod.spec.containers.envFrom.configMapRef.name`
