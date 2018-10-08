# Overview

There are four types of Kubernetes networking:

* Highly-coupled container-to-container communications: this is solved by pods and localhost communications
* Pod-to-Pod communications 
* Pod-to-Service communications: this is covered by services.
* External-to-Service communications: this is covered by services.


# Concepts

* **BGP (Border Gateway Protocol)**: a standardized exterior gateway protocol designed to exchange routing and reachability information among autonomous systems (AS) on the Internet.
* **CNI (Container Networking Interface)** https://github.com/containernetworking/cni
* **Hypervisor**
* **Linux bridge (`cbr0`)**
* **Load-balancer**
* **Logical router**
* **Logical switch**
* **NAT (Network Address Translation)**
* **Network Namespace**: containers inside one pod share same network namespace https://blog.scottlowe.org/2013/09/04/introducing-linux-network-namespaces/
* **Overlay network**: a flat virtual network which runs above the host network. An overlay network decouples network services from the underlying infrastructure by encapsulating one packet inside of another packet. https://searchsdn.techtarget.com/definition/overlay-network
* **SDN (Software Defined Network)**
* **Stateful ACLs**
* **Underlay network**: physical infrastructure above which overlay network is built. It is the underlying network responsible for delivery of packets across networks. https://ipwithease.com/difference-between-underlay-network-and-overlay-network/
* **vSwitch**
