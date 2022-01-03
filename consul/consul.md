# Consul deployment guide on Kubernetes

Add to repo

    helm repo add hashicorp https://helm.releases.hashicorp.com

Create a config.yaml file

    global:
        name: consul
        acls:
            manageSystemACLs: false
        gossipEncryption:
            autoGenerate: true
        server:
        replicas: 1
        ui:
        enabled: true
        connectInject:
        enabled: true
        default: true
        controller:
        enabled: true

Run

    helm install consul hashicorp/consul --create-namespace -n consul -f consul.yaml

Forward ports to access UI

    kubectl port-forward service/consul-server -n consul 8500:8500