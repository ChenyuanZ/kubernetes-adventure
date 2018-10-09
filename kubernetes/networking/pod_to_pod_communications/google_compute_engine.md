# Google Compute Engine

* GCE allocate subnet for each VM.
* GCE network fabric route traffic from subnet to VM.
* Kubelete creats linux bridge `cbr0` for subnet. Bridge is configured in docker aslo.
* Docker allocates IPs from `cbr-cidr`.
* Containers reach each other and `Nodes` over `cbr0` bridge.
* IPs are routable within GCE project network.
* iptables rule is used to SNAT outside traffic.
* IP forwarding is enabled in kernal. `sysctl net.ipv4.ip_forward=1`


## Reference

https://kubernetes.io/docs/concepts/cluster-administration/networking/#google-compute-engine-gce
