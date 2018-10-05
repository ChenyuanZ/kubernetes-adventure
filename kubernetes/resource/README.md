# Resource

## Compressible V.S. Incompressible

Some resources, such as CPU and network bandwidth, are compressible, which means that their usage can potentially be throttled in a relatively benign manner. All other resources are incompressible, which means that any attempt to throttle them is likely to cause grief. This distinction will be important if a Kubernetes implementation supports over-committing of resources.

### Compressible Resource

E.g. CPU

* Pods will be throttled if they exceed their limit, or if CPU guarantees cannot be met.

### Incompressible Resource

E.g. memory

* Pods will be killed if they exceed their request and when other pod needs memory.
* Pods will be killed if they did not exceed their request and system task or daemons need memory.
* If pods exceed their limit, the process that is using the most amount of memory inside the pod container will be killed.


## Quality of Service (Qos)

### Guaranteed

* limits and (optionally) requests are set for all containers
* requests == limits

### Burstable

* (optionally) limits and requests are set for one or more containers
* requests != limits

### Best-Effort

* limits and requests are NOT set for all containers


## Other concepts

* Feasibility checking



Ref:
* https://github.com/kubernetes/community/blob/master/contributors/design-proposals/scheduling/resources.md
* https://github.com/kubernetes/community/blob/master/contributors/design-proposals/node/resource-qos.md
