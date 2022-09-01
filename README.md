# pocketbase-docker

## Release

To release a new version:

- Change the PocketBase version in the Dockerfile
- Change the PocketBase version in the pocketbase-helm/Chart.yaml and the Chart version
- Update the README.md
- If needed, run `readme-generator -v .\pocketbase-helm\values.yaml -r .\README.md` (https://github.com/bitnami-labs/readme-generator-for-helm)
- Tag the commit as vX.X.X following the PocketBase version

## Installation

You can install pocketbase on K8S by running the command:

`helm upgrade pocketbase oci://rg.fr-par.scw.cloud/sepropriodev/pocketbase-helm --version 0.2.0 --install`

## Quick version reference

| PocketBase Version | Helm Version |
|--------------------|--------------|
| v0.5.2             | 0.2.0        |
| v0.5.1             | 0.1.1        |

## Parameters

### PocketBase configuration

| Name                                            | Description                                                                                 | Value                                         |
| ----------------------------------------------- | ------------------------------------------------------------------------------------------- | --------------------------------------------- |
| `replicaCount`                                  | How many replicas of pocketbase should be deployed, it is ignored if autoscaling is enabled | `1`                                           |
| `nameOverride`                                  | String to partially override the deployment name (will maintain the release name)           | `""`                                          |
| `fullnameOverride`                              | String to fully override the deployment name                                                | `pocketbase`                                  |
| `image.repository`                              | The repository (and image name) where the pocketbase docker image is stored                 | `rg.fr-par.scw.cloud/sepropriodev/pocketbase` |
| `image.pullPolicy`                              | Deployment pull policy                                                                      | `IfNotPresent`                                |
| `image.tag`                                     | Overrides the image tag whose default is the chart appVersion                               | `""`                                          |
| `persistence.storage`                           | How much storage space should be reserved for PocketBase                                    | `2Gi`                                         |
| `persistence.storageClass`                      | The PV storage class (a storageClass with Retain policy is recommended)                     | `""`                                          |
| `service.type`                                  | The service type exposing the PocketBase pods                                               | `ClusterIP`                                   |
| `service.port`                                  | The port on which PocketBase is exposed                                                     | `8090`                                        |
| `resources`                                     | The resources associated with the deployment                                                | `{}`                                          |
| `autoscaling.enabled`                           | Whether to enable autoscaling                                                               | `false`                                       |
| `autoscaling.minReplicas`                       | number of min replicas                                                                      | `1`                                           |
| `autoscaling.maxReplicas`                       | number of max replicas                                                                      | `10`                                          |
| `autoscaling.targetCPUUtilizationPercentage`    | targetCPUUtilizationPercentage                                                              | `80`                                          |
| `autoscaling.targetMemoryUtilizationPercentage` | targetMemoryUtilizationPercentage                                                           | `80`                                          |
| `podAnnotations`                                | Extra annotations to attach to the pods                                                     | `{}`                                          |
| `nodeSelector`                                  | Node selector labels                                                                        | `{}`                                          |
| `affinity`                                      | The pod affinities                                                                          | `{}`                                          |


