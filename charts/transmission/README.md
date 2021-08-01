# transmission

![Version: 0.1.2](https://img.shields.io/badge/Version-0.1.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: auto](https://img.shields.io/badge/AppVersion-auto-informational?style=flat-square)

Transmission (with OpenVPN support) is a fast, easy, and free BitTorrent client.

**Homepage:** <https://haugene.github.io/docker-transmission-openvpn>

## Source Code

* <https://github.com/transmission/transmission>
* <https://github.com/haugene/docker-transmission-openvpn>
* <https://hub.docker.com/r/haugene/transmission-openvpn>

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
| env.LOCAL_NETWORK | string | `"10.0.0.0/8,172.16.0.0/12"` |  |
| env.PGID | int | `568` |  |
| env.PUID | int | `568` |  |
| env.TZ | string | `"Etc/UTC"` |  |
| env.UMASK | int | `2` |  |
| envList | list | `[]` |  |
| envValueFrom.WEBPASSWORD.secretKeyRef.key | string | `"openvpn-password"` |  |
| envValueFrom.WEBPASSWORD.secretKeyRef.name | string | `"transmission-credentials"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"haugene/transmission-openvpn"` |  |
| image.tag | string | `"latest"` |  |
| ingress.web.enabled | bool | `false` |  |
| ingress.web.entryPoints[0] | string | `"websecure"` |  |
| ingress.web.routes[0].match | string | `"Host(`test.example.com`)"` |  |
| ingress.web.routes[0].middlewares | list | `[]` |  |
| nameOverride | string | `""` |  |
| openvpn.password | string | `"pass"` |  |
| openvpn.provider | string | `"PIA"` |  |
| openvpn.username | string | `"user"` |  |
| persistence.config.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.config.enabled | bool | `true` |  |
| persistence.config.mountPath | string | `"/data"` |  |
| persistence.config.size | string | `"1Gi"` |  |
| persistence.config.type | string | `"pvc"` |  |
| probes.liveness.command | string | `"/etc/scripts/healthcheck.sh"` |  |
| probes.liveness.enabled | bool | `false` |  |
| probes.startup.command | string | `"/etc/scripts/healthcheck.sh"` |  |
| probes.startup.enabled | bool | `false` |  |
| service.web.enabled | bool | `true` |  |
| service.web.ports.http.enabled | bool | `true` |  |
| service.web.ports.http.port | int | `9091` |  |
| service.web.ports.http.primary | bool | `true` |  |
| service.web.ports.http.protocol | string | `"HTTP"` |  |
| service.web.primary | bool | `true` |  |
| service.web.type | string | `"ClusterIP"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.5.0](https://github.com/norwoodj/helm-docs/releases/v1.5.0)