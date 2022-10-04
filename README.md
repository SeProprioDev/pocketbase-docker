# pocketbase-docker

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/pocketbase-docker)](https://artifacthub.io/packages/search?repo=pocketbase-docker)

## Installation

See [here](https://artifacthub.io/packages/helm/pocketbase-docker/pocketbase-helm) for more information

## Quick version reference

| PocketBase Version | Helm Version |
|--------------------|--------------|
| v0.7.7             | 0.4.6        |
| v0.7.5             | 0.4.5        |
| v0.7.4             | 0.4.4        |
| v0.7.2             | 0.4.2        |
| v0.7.1             | 0.4.1        |
| v0.7.0             | 0.4.0        |

## Changelog

<details>
<summary>Spoiler</summary>

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

## TODO

- [X] Support PB_ENCRYPTION_KEY
- [ ] Support ingress for pocketbase
- [ ] Create an admin account on startup (attached to helm notes)