# Pod-to-Pod communications

AKA, Kubernetes networking model, which might be SDN. Kubernetes does not provide any default network implementation, rather it only defines the model and leaves to other tools to implement it:

* ACI
* AOS
* Big Cloud Fabric (multi-tenant)
* Cilium
* CNI-Genie (multi-network)
* Contive
* Contrail
* Flannel
	* Networking
* Google Compute Engine (GCE)
	* Networking
* Knitter (tenant management)
* Kube-router
* L2 networks and linux bridging
* Multus (multi network)
* NSX-T
* Nuage Networks VCS
* OpenVSwitch
* OVN (Open Virtual Networking)
* Project Calico
	* Network Policy
* Romana
* Weave Net
* Jaguar

## Reference

* https://kubernetes.io/docs/concepts/cluster-administration/networking/
