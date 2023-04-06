# pocketbase-docker

## Installation

You can install pocketbase on K8S by running the command:

`helm upgrade pocketbase oci://rg.fr-par.scw.cloud/sepropriodev/pocketbase-helm --version 0.11.0 --install`

## Run tests

You can run pocketbase tests by running the command:

`helm test pocketbase`

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
| `ingress.enabled`                               | Whether to enable the ingress                                                                                                                         | `false`                                       |
| `ingress.clusterIssuer`                         | The Cert Manager cluster issuer (https://cert-manager.io/docs/configuration/acme/http01/)                                                             | `letsencrypt-prod`                            |
| `ingress.dns`                                   | The dns name which will expose PocketBase                                                                                                             | `""`                                          |
| `resources`                                     | The resources associated with the deployment                                                                                                          | `{}`                                          |
| `autoscaling.enabled`                           | Whether to enable autoscaling                                                                                                                         | `false`                                       |
| `autoscaling.minReplicas`                       | number of min replicas                                                                                                                                | `1`                                           |
| `autoscaling.maxReplicas`                       | number of max replicas                                                                                                                                | `10`                                          |
| `autoscaling.targetCPUUtilizationPercentage`    | targetCPUUtilizationPercentage                                                                                                                        | `80`                                          |
| `autoscaling.targetMemoryUtilizationPercentage` | targetMemoryUtilizationPercentage                                                                                                                     | `80`                                          |


## Upgrading

### From 0.9.X (pocketbase v0.12.X) to 0.10.x (pocketbase v0.13.X)

No upgrade is required

Check https://github.com/pocketbase/pocketbase/releases/tag/v0.13.0 for possible breaking changes

### From 0.8.X (pocketbase v0.11.X) to 0.9.x (pocketbase v0.12.X)

No upgrade is required

### From 0.7.X (pocketbase v0.10.X) to 0.8.x (pocketbase v0.11.X)

No upgrade is required

Make sure to have a backup of your pb_data and to read the notes below before updating (there is small breaking change in case you are filtering multi-relation fields in your client-side code).

### From 0.6.X (pocketbase v0.9.X) to 0.7.x (pocketbase v0.10.X)

No upgrade is required

### From 0.5.X (pocketbase v0.8.X) to 0.6.x (pocketbase v0.9.X)

No upgrade is required, be sure to upgrade from From v0.7.X to v0.8.X first!

### From 0.4.X (pocketbase v0.7.X) to 0.5.x (pocketbase v0.8.X)

The upgrade is managed by the helm chart.