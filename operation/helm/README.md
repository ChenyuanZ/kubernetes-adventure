# Concepts

* chart
* config
* release
	* an instance of chart + config
	* a built-in object for helm
* repository
	* the place where charts can be collected and shared.


# Useful commands

* Delete tiller: `kubectl delete deployment tiller-deploy --namespace kube-system` or `helm reset`.
* Install tiller: `helm init`.
* Store release info in secret instead of configmap: `helm init --override 'spec.template.spec.containers[0].command'='{/tiller,--storage=secret}'`
* `helm history <chart>`
* `helm ls`
* `helm search`
* `helm inspect <chart>`
* `helm status <release>`
* `helm get <release>`
* `helm inspect values <chart>`  # to see what values are configurable
* `helm get values <release-name>`  # return values set by `--set`
* `helm install --debug --dry-run ./mychart`


# Till ConfigMap

`kubectl get cm -n kube-system <release>.v1 -o yaml`


# Pass chart configuration

There are two ways to pass configuration data during install:

* `--values` (or `-f`): Specify a YAML file with overrides. This can be specified multiple times and the rightmost file will take precedence
* `--set` (and its variants `--set-string` and `--set-file`): Specify overrides on the command line.

`values.yaml` < parent chart `values.yaml` < user supplied values file (`--values`, or `-f`) < `--set`


# Developing Template

* If you need to delete a key from the default values, you may override the value of the key to be `null`, in which case Helm will remove the key from the overridden values merge.


# Reference

* https://docs.helm.sh/using_helm/#quickstart
* https://docs.helm.sh/chart_template_guide/
