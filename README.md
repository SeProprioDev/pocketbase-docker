# pocketbase-docker

## Installation

You can install pocketbase on K8S by running the command:

`helm upgrade pocketbase oci://rg.fr-par.scw.cloud/sepropriodev/pocketbase-helm --version 0.4.2 --install`

## Quick version reference

| PocketBase Version | Helm Version |
|--------------------|--------------|
| v0.7.2             | 0.4.2        |
| v0.7.1             | 0.4.1        |
| v0.7.0             | 0.4.0        |
| v0.6.0             | 0.3.1        |

## Changelog

<details>
<summary>Spoiler</summary>

### v0.4.2

Upgraded to PocketBase v0.7.2

### v0.4.1

Upgraded to PocketBase v0.7.1

### v0.4.0

Upgraded to PocketBase v0.7.0

### v0.3.1

Upgraded to PocketBase v0.6.0
</details>

## TODO

- [X] Support PB_ENCRYPTION_KEY
- [ ] Create an admin account on startup (attached to helm notes)


- ~~Support http / https flags~~ (won't do, pocketbase should be accessible only internally within the K8s)
 
## Parameters

### PocketBase configuration

| Name                                            | Description                                                                                                                                           | Value                                         |
| ----------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------- |
| `replicaCount`                                  | How many replicas of pocketbase should be deployed, it is ignored if autoscaling is enabled                                                           | `1`                                           |
| `nameOverride`                                  | String to partially override the deployment name (will maintain the release name)                                                                     | `""`                                          |
| `fullnameOverride`                              | String to fully override the deployment name                                                                                                          | `pocketbase`                                  |
| `flags.encryptionEnv`                           | The PB_ENCRYPTION_KEY 32 characters string, see https://pocketbase.io/docs/going-to-production/#:~:text=enable%20settings%20encryption for more infos | `""`                                          |
| `image.repository`                              | The repository (and image name) where the pocketbase docker image is stored                                                                           | `rg.fr-par.scw.cloud/sepropriodev/pocketbase` |
| `image.pullPolicy`                              | Deployment pull policy                                                                                                                                | `IfNotPresent`                                |
| `image.tag`                                     | Overrides the image tag whose default is the chart appVersion                                                                                         | `""`                                          |
| `persistence.storage`                           | How much storage space should be reserved for PocketBase                                                                                              | `2Gi`                                         |
| `persistence.storageClass`                      | The PV storage class (a storageClass with Retain policy is recommended)                                                                               | `""`                                          |
| `service.type`                                  | The service type exposing the PocketBase pods                                                                                                         | `ClusterIP`                                   |
| `service.port`                                  | The port on which PocketBase is exposed                                                                                                               | `8090`                                        |
| `resources`                                     | The resources associated with the deployment                                                                                                          | `{}`                                          |
| `autoscaling.enabled`                           | Whether to enable autoscaling                                                                                                                         | `false`                                       |
| `autoscaling.minReplicas`                       | number of min replicas                                                                                                                                | `1`                                           |
| `autoscaling.maxReplicas`                       | number of max replicas                                                                                                                                | `10`                                          |
| `autoscaling.targetCPUUtilizationPercentage`    | targetCPUUtilizationPercentage                                                                                                                        | `80`                                          |
| `autoscaling.targetMemoryUtilizationPercentage` | targetMemoryUtilizationPercentage                                                                                                                     | `80`                                          |


