# Job

`Job` is used to execute finite tasks, and ensure they complete successfully (zero exit code).

Job restart policy: `job.spec.template.spec.restartPolicy`:

* `OnFailure`: a failed container will be re-run on the same pod.
* `Never`: a failed container will be re-run on a new pod.


## Use Case

* batch processing
* long-running calculation
* backup and file sync operations
* processing items from a work queue
* file upload to external services


# CronJob

`cronjob.spec.schedule`: `* * * * *` [minute (0 - 59), hour (0 - 23), day of the month (1 - 31), day of the week (0 - 6) (Sunday to Saturday; 7 is also Sunday on some systems)]


## Issue

More than one job might get created for a single `CronJob` task.
