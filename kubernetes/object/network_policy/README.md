# Network Policies

A network policy is a specification of how groups of pods are allowed to communicate with each other and other network endpoints [1]. It achieves this by using `label` and `selector`.

> `NetworkPolicy` requires a network plugin that supports it to take impact.


# Example

```
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: test-network-policy
  namespace: default
spec:
  podSelector:
    matchLabels:
      role: db
  policyTypes:
  - Ingress
  - Egress
  ingress:
  - from:
    - ipBlock:
        cidr: 172.17.0.0/16
        except:
        - 172.17.1.0/24
    - namespaceSelector:
        matchLabels:
          project: myproject
    - podSelector:
        matchLabels:
          role: frontend
    ports:
    - protocol: TCP
      port: 6379
  egress:
  - to:
    - ipBlock:
        cidr: 10.0.0.0/24
    ports:
    - protocol: TCP
      port: 5978
```


# Configuration

* https://kubernetes.io/docs/concepts/services-networking/network-policies/#the-networkpolicy-resource
* https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.12/#networkpolicy-v1-networking-k8s-io


# Concepts

* `Ingress`: incoming network traffic
* `Egress`: outgoing network traffic


# Reference

1. https://kubernetes.io/docs/concepts/services-networking/network-policies/
2. https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.12/#networkpolicy-v1-networking-k8s-io
3. https://kubernetes.io/docs/tasks/administer-cluster/declare-network-policy/ **TODO**
