# pocketbase-docker

## Release

To release a new version:

- Change the PocketBase version in the Dockerfile
- Change the PocketBase version in the pocketbase-helm/Chart.yaml and the Chart version
- Update the README.md
- Tag the commit as vX.X.X

## Installation

You can install pocketbase on K8S by running the command:

`helm upgrade pocketbase oci://rg.fr-par.scw.cloud/sepropriodev/pocketbase-helm --version 0.2.0 --install`

## Quick version reference

| PocketBase Version | Helm Version |
|--------------------|--------------|
| v0.5.2             | 0.2.0        |
| v0.5.1             | 0.1.1        |