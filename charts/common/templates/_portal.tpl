{{- define "common.portal" -}}
{{- include "common.values.default" . }}

{{- if .Values.portal }}
{{- if .Values.portal.enabled }}

{{- $primaryService := get .Values.service (include "common.service.primary" .) }}
{{- $primaryPort := get $primaryService.ports (include "common.service.primary.port" (dict "values" $primaryService)) -}}

{{- $protocol := .Values.portal.protocol }}
{{- $host := .Values.portal.host }}
{{- $port := .Values.portal.port }}
{{- $path := .Values.portal.path }}

{{- if eq $primaryService.type "NodePort" }}
  {{- $port = $primaryPort.nodePort }}
{{- end }}

{{- if not $protocol }}
  {{- fail (printf "Web-portal protocol not defined") -}}
{{- end }}

{{- if not $host }}
  {{- fail (printf "Web-portal host not defined") -}}
{{- end }}

{{- if not $port }}
  {{- fail (printf "Web-portal port not defined") -}}
{{- end }}

{{- if not $path }}
  {{- fail (printf "Web-portal path not defined") -}}
{{- end }}

---
apiVersion: v1
kind: ConfigMap
metadata:
  name: portal
  labels: {{ include "common.labels" . | nindent 4 }}
data:
  protocol: {{ $protocol }}
  host: {{ $host | quote }}
  port: {{ $port | quote }}
  path: {{ $path | quote }}
  url: {{ ( printf "%v://%v:%v%v" $protocol $host $port $path ) | quote }}
{{- end }}
{{- end }}
{{- end }}
