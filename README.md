# troubleshooting_tools_container
Fedora based container image that can be deployed to a docker/podman/k8s/ocp cluster with intent on troubleshooting with common utilities

# Image
Fedora based Image with troubleshooting tools:
https://hub.docker.com/repository/docker/moosestack/troubleshooting-tools/tags

 - Based out of: [Containerfile](Containerfile)
 - `docker.io/moosestack/troubleshooting-tools:latest`


# Deployment
 - **Docker**: `docker run -it docker.io/moosestack/troubleshooting-tools:latest /bin/bash`

 - **Podman**: `podman run -it docker.io/moosestack/troubleshooting-tools:latest /bin/bash`
  
 - **oc** (OpenShift CLI) - update `<NAMESPACE>`: 
     1. `oc apply -f https://raw.githubusercontent.com/MooseStack/troubleshooting_tools_container/refs/heads/main/openshift.yaml -n <NAMESPACE>`
     2. `oc exec -it -n <NAMESPACE> deployments/troubleshooting-tools -- /bin/bash`

 - **kubectl** - update `<NAMESPACE>`: :
     1. `oc apply -f https://raw.githubusercontent.com/MooseStack/troubleshooting_tools_container/refs/heads/main/openshift.yaml -n <NAMESPACE>`
     2. `oc exec -it -n <NAMESPACE> deployments/troubleshooting-tools -- /bin/bash`