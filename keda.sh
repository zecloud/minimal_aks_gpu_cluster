az extension add --name aks-preview
az extension update --name aks-preview
az feature register --namespace "Microsoft.ContainerService" --name "AKS-KedaPreview"
#wait for it
az feature show --namespace "Microsoft.ContainerService" --name "AKS-KedaPreview"
az provider register --namespace Microsoft.ContainerService

az aks update \
  --resource-group minigpucluster \
  --name miniCluster \
  --enable-keda 
az aks show -g "minigpucluster" --name miniCluster --query "workloadAutoScalerProfile.keda.enabled"
kubectl get pods -n kube-system