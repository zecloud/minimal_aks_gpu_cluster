az aks nodepool add --resource-group minigpucluster --cluster-name minicluster --name gpumig --node-count 0 --node-vm-size Standard_NC24ads_A100_v4 --node-taints sku=gpu:NoSchedule --aks-custom-headers UseGPUDedicatedVHD=true --enable-cluster-autoscaler --min-count 0 --max-count 1 --gpu-instance-profile MIG2G