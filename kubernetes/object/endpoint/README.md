# EndPoints

`Endpoints` is a collection of endpoints that implement the actual `Service` [1].


# How to create Endpoints

## Auto creation

`Endpoints` is auto-generated when user POSTed a `Service` spec with `spec.selector` defined. The `Service`’s selector will be evaluated continuously and the results will be POSTed to an Endpoints object, which has same name as `Service` [3].


## Manual creation

If `Service` spec `spec.selector` is undefined, user needs to manually create `Endpoints`. E.g. [3]

```
kind: Service
apiVersion: v1
metadata:
  name: my-service
spec:
  ports:
  - protocol: TCP
    port: 80
    targetPort: 9376
```

```
kind: Endpoints
apiVersion: v1
metadata:
  name: my-service
subsets:
  - addresses:
      - ip: 1.2.3.4
    ports:
      - port: 9376
```

# Reference

1. https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.10/#endpoints-v1-core
2. https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.12/#endpoints-v1-core
3. https://kubernetes.io/docs/concepts/services-networking/service/
