# prowlarr

![Version: 0.1.2](https://img.shields.io/badge/Version-0.1.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: auto](https://img.shields.io/badge/AppVersion-auto-informational?style=flat-square)

Prowlarr is a indexer manager/proxy to integrate with your various PVR apps.

**Homepage:** <https://github.com/Prowlarr/Prowlarr>

## Source Code

* <https://github.com/Prowlarr/Prowlarr>
* <https://hub.docker.com/r/linuxserver/prowlarr>

## Requirements

Kubernetes: `>=1.16.0-0`

| Repository | Name | Version |
|------------|------|---------|
| https://tvanbolderen.github.io/homelab | common | 0.3.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| controller.replicas | int | `1` |  |
| controller.strategy | string | `"Recreate"` |  |
| env.PGID | int | `568` |  |
| env.PUID | int | `568` |  |
| env.TZ | string | `"Etc/UTC"` |  |
| env.UMASK | int | `2` |  |
| envList | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"linuxserver/prowlarr"` |  |
| image.tag | string | `"develop"` |  |
| ingress.web.certResolver | string | `"letsencrypt"` |  |
| ingress.web.enabled | bool | `false` |  |
| ingress.web.entryPoint | string | `"websecure"` |  |
| ingress.web.match | string | `"Host(`test.example.com`)"` |  |
| nameOverride | string | `""` |  |
| persistence.config.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.config.enabled | bool | `true` |  |
| persistence.config.mountPath | string | `"/config"` |  |
| persistence.config.size | string | `"1Gi"` |  |
| persistence.config.type | string | `"pvc"` |  |
| probes.liveness.enabled | bool | `false` |  |
| probes.liveness.path | string | `"/"` |  |
| probes.startup.enabled | bool | `false` |  |
| probes.startup.path | string | `"/"` |  |
| service.web.enabled | bool | `true` |  |
| service.web.ports.http.enabled | bool | `true` |  |
| service.web.ports.http.port | int | `9696` |  |
| service.web.ports.http.primary | bool | `true` |  |
| service.web.ports.http.protocol | string | `"HTTP"` |  |
| service.web.primary | bool | `true` |  |
| service.web.type | string | `"ClusterIP"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
