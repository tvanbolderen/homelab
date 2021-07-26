{{- define "common.portal" -}}

{{- if .Values.portal }}
{{- if .Values.portal.enabled }}

{{- if not .Values.portal.protocol }}
  {{- fail (printf "Web-portal protocol not defined") -}}
{{- end }}

{{- if not .Values.portal.host }}
  {{- fail (printf "Web-portal host not defined") -}}
{{- end }}

{{- if not .Values.portal.port }}
  {{- fail (printf "Web-portal port not defined") -}}
{{- end }}

{{- if not .Values.portal.path }}
  {{- fail (printf "Web-portal path not defined") -}}
{{- end }}

{{- $protocol := .Values.portal.protocol }}
{{- $host := .Values.portal.host }}
{{- $port := .Values.portal.port }}
{{- $path := .Values.portal.path }}

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
