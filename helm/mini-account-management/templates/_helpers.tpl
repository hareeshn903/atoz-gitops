{{- define "mini-account-management.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "mini-account-management.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end }}

{{- define "mini-account-management.labels" -}}
app.kubernetes.io/name: {{ include "mini-account-management.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}