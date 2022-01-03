# Datadog deployment

Add to repo:

    helm repo add datadog https://helm.datadoghq.com

Create datadog.yaml file.

Install:

    helm install datadog-agent -f datadog.yaml --set datadog.site='datadoghq.eu' --set datadog.apiKey='b66a45e6c7b07b99c1883144439e4119' datadog/datadog