# pocketbase-docker

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/pocketbase-docker)](https://artifacthub.io/packages/search?repo=pocketbase-docker)

## Installation

See [here](https://artifacthub.io/packages/helm/pocketbase-docker/pocketbase-helm) for more informations

## Quick version reference

| PocketBase Version | Helm Version |
|--------------------|--------------|
| v0.7.4             | 0.4.3        |
| v0.7.2             | 0.4.2        |
| v0.7.1             | 0.4.1        |
| v0.7.0             | 0.4.0        |
| v0.6.0             | 0.3.1        |

## Changelog

<details>
<summary>Spoiler</summary>

### v0.4.3

Upgraded to PocketBase v0.7.4

### v0.4.2

Upgraded to PocketBase v0.7.2, added support for PB_ENCRYPTION_KEY

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