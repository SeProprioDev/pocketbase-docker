# Release

To release a new version:

- Change the PocketBase version in the Dockerfile
- Change the PocketBase version in the pocketbase-helm/Chart.yaml and the Chart version
- Update the README.md in the root and in the pocketbase-helm folder
- If needed, run `readme-generator -v .\values.yaml -r .\README.md` (https://github.com/bitnami-labs/readme-generator-for-helm)
- Tag the commit as vX.X.X following the PocketBase version
