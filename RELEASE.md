# Release

To release a new version:

- Change the PocketBase version in the Dockerfile
- Change the PocketBase version in the pocketbase-helm/Chart.yaml and the Chart version
- Update the README.md
- If needed, run `readme-generator -v .\pocketbase-helm\values.yaml -r .\README.md` (https://github.com/bitnami-labs/readme-generator-for-helm)
- Tag the commit as vX.X.X following the PocketBase version
