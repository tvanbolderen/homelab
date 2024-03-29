# pihole

![Version: 0.2.8](https://img.shields.io/badge/Version-0.2.8-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: auto](https://img.shields.io/badge/AppVersion-auto-informational?style=flat-square)

Pi-hole is a DNS sinkhole that protects your devices from unwanted content.

**Homepage:** <https://github.com/pi-hole/pi-hole>

## Source Code

* <https://pi-hole.net>
* <https://github.com/pi-hole/pi-hole>
* <https://hub.docker.com/r/pihole/pihole>

## Requirements

Kubernetes: `>=1.16.0-0`

| Repository | Name | Version |
|------------|------|---------|
| https://tvanbolderen.github.io/homelab | common | 0.3.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| controller.replicas | int | `1` |  |
| controller.rollingUpdate.surge | int | `1` |  |
| controller.rollingUpdate.unavailable | int | `1` |  |
| controller.strategy | string | `"RollingUpdate"` |  |
| env.TZ | string | `"Etc/UTC"` |  |
| envList | list | `[]` |  |
| envValueFrom.WEBPASSWORD.secretKeyRef.key | string | `"admin-password"` |  |
| envValueFrom.WEBPASSWORD.secretKeyRef.name | string | `"pihole-credentials"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"pihole/pihole"` |  |
| image.tag | string | `"latest"` |  |
| ingress.web.certResolver | string | `"letsencrypt"` |  |
| ingress.web.enabled | bool | `false` |  |
| ingress.web.entryPoint | string | `"websecure"` |  |
| ingress.web.match | string | `"Host(`test.example.com`)"` |  |
| nameOverride | string | `""` |  |
| persistence.config.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.config.enabled | bool | `true` |  |
| persistence.config.mountPath | string | `"/etc/pihole"` |  |
| persistence.config.size | string | `"1Gi"` |  |
| persistence.config.type | string | `"pvc"` |  |
| persistence.dnsmasq.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.dnsmasq.enabled | bool | `true` |  |
| persistence.dnsmasq.mountPath | string | `"/etc/dnsmasq.d"` |  |
| persistence.dnsmasq.size | string | `"1Gi"` |  |
| persistence.dnsmasq.type | string | `"pvc"` |  |
| probes.liveness.enabled | bool | `false` |  |
| probes.liveness.path | string | `"/admin.index.php"` |  |
| probes.readiness.enabled | bool | `false` |  |
| probes.readiness.path | string | `"/admin.index.php"` |  |
| service.dhcp.enabled | bool | `false` |  |
| service.dhcp.ports.dhcp.enabled | bool | `true` |  |
| service.dhcp.ports.dhcp.port | int | `67` |  |
| service.dhcp.ports.dhcp.protocol | string | `"UDP"` |  |
| service.dhcp.type | string | `"ClusterIP"` |  |
| service.dns.enabled | bool | `false` |  |
| service.dns.ports.tcp.enabled | bool | `true` |  |
| service.dns.ports.tcp.port | int | `53` |  |
| service.dns.ports.tcp.protocol | string | `"TCP"` |  |
| service.dns.ports.udp.enabled | bool | `true` |  |
| service.dns.ports.udp.port | int | `53` |  |
| service.dns.ports.udp.protocol | string | `"UDP"` |  |
| service.dns.type | string | `"ClusterIP"` |  |
| service.web.enabled | bool | `true` |  |
| service.web.ports.http.enabled | bool | `true` |  |
| service.web.ports.http.port | int | `80` |  |
| service.web.ports.http.primary | bool | `true` |  |
| service.web.ports.http.protocol | string | `"HTTP"` |  |
| service.web.ports.https.enabled | bool | `true` |  |
| service.web.ports.https.port | int | `443` |  |
| service.web.ports.https.protocol | string | `"HTTPS"` |  |
| service.web.primary | bool | `true` |  |
| service.web.type | string | `"ClusterIP"` |  |
| webInterface.adminPassword | string | `"admin"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
