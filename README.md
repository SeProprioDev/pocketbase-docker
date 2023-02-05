# pocketbase-docker

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/pocketbase-docker)](https://artifacthub.io/packages/search?repo=pocketbase-docker)

## Installation

See [here](https://artifacthub.io/packages/helm/pocketbase-docker/pocketbase-helm) for more information

## Quick version reference

| PocketBase Version | Helm Version |
|--------------------|--------------|
| v0.12.2            | 0.9.0        |
| v0.11.3            | 0.8.0        |
| v0.10.4            | 0.7.0        |
| v0.9.0             | 0.6.0        |

## Changelog

<details>
<summary>Spoiler</summary>

### v0.9.0

- Upgraded to pocketbase v0.12.2

### v0.8.0

- Upgraded to pocketbase v0.11.3

**Make sure to have a backup of your pb_data and to read the notes below before updating (there is small breaking change in case you are filtering multi-relation fields in your client-side code).**

### v0.7.0

- Upgraded to pocketbase v0.10.4

### v0.6.0

- Upgraded to pocketbase v0.9.0

**IMPORTANT**: Before upgrading to v0.6.0 remember to upgrade to v0.5.0 first!

### v0.5.0

- Fixed the ingress.yaml
- Upgraded to PocketBase v0.8.0, see changelog [here](https://github.com/pocketbase/pocketbase/releases/tag/v0.8.0)

The upgrade procedure is managed by the helm chart, so relax, **backup** and upgrade!

### v0.4.9

Upgraded to PocketBase v0.7.10

### v0.4.8

Added possibility to create ingress for PocketBase

### v0.4.7

Upgraded to PocketBase v0.7.9

### v0.4.6

Upgraded to PocketBase v0.7.7

### v0.4.5

Upgraded to PocketBase v0.7.5

### v0.4.4

Fixed service port
Fixed url on which pocketbase listens (it is now 0.0.0.0)
Added connection test

### v0.4.3

Upgraded to PocketBase v0.7.4

### v0.4.2

Upgraded to PocketBase v0.7.2, added support for PB_ENCRYPTION_KEY

### v0.4.1

Upgraded to PocketBase v0.7.1

### v0.4.0

Upgraded to PocketBase v0.7.0

</details>