az extension add --name aks-preview
az extension update --name aks-preview
az feature register --namespace "Microsoft.ContainerService" --name "GPUDedicatedVHDPreview"
az provider register --namespace Microsoft.ContainerService