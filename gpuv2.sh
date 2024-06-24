az aks nodepool add \
    --resource-group minigpucluster \
    --cluster-name miniCluster \
    --name gpunpv2 \
    --node-count 1 \
    --skip-gpu-driver-install \
    --node-vm-size Standard_NC6s_v3 \
    --enable-cluster-autoscaler \
    --min-count 0 \
    --max-count 2
kubectl create ns gpu-operator
kubectl label --overwrite ns gpu-operator pod-security.kubernetes.io/enforce=privileged
helm repo add nvidia https://helm.ngc.nvidia.com/nvidia \
    && helm repo update
helm install --wait --generate-name \
    -n gpu-operator --create-namespace \
    nvidia/gpu-operator