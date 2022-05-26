# HomeLab

When making changes, always update the helm chart documentation
```bash
# Run the follwoing command
tools/generate-helm-docs.sh
```

---

## Update helm chart dependencies

Update `<chart>/Chart.yml`
* `version`, the version of __this__ helm chart
* `appVersion`, the version of the __application__ (in this example Traefik)
* `dependencies:version`, the version of the __depending__ helm chart (in this example Traefik)

```yaml
# Example
apiVersion: v2
appVersion: '2.7.0'
dependencies:
  - name: traefik
    version: '10.20.0'
type: application
version: 0.2.0
```

Update `<chart>/SCALE/ix_values.yaml`
* `image:tag`, the version of the docker image (usually equal to the Chart.yml appVersion)

```yaml
# Example
image:
  name: traefik
  tag: '2.7.0'
``` 

Update `<chart>/Chart.lock`
```bash
# Run the follwoing command
helm dependency update charts/traefik
```