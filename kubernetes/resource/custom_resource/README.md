# Overview

A custom resource is an extension of the Kubernetes API.

Two ways to add custom resources:
* CRDs are simple and can be created without any programming. (not recommended for commercial product)
* API Aggregation requires programming, but allows more control over API behaviors like how data is stored and conversion between API versions.


# CRDs Best Practice

* Finalizers
```
apiVersion: "stable.example.com/v1"
kind: CronTab
metadata:
  finalizers:
  - finalizer.stable.example.com
```

* Validation
```
  validation:
   # openAPIV3Schema is the schema for validating custom objects.
    openAPIV3Schema:
      properties:
        spec:
          properties:
            cronSpec:
              type: string
              pattern: '^(\d+|\*)(/\d+)?(\s+(\d+|\*)(/\d+)?){4}$'
```

* Additional Printer Columns
```
    additionalPrinterColumns:
    - name: Spec
      type: string
      description: The cron spec defining the interval a CronJob is run
      JSONPath: .spec.cronSpec
    - name: Replicas
      type: integer
      description: The number of jobs launched by the CronJob
      JSONPath: .spec.replicas
    - name: Age
      type: date
      JSONPath: .metadata.creationTimestamp
```


# Components

* Custom Resource
* Controller
* API Server


# References

* https://kubernetes.io/docs/concepts/extend-kubernetes/api-extension/custom-resources/
* https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/
