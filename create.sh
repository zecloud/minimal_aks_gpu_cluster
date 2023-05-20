az aks create -n miniCluster \
    --resource-group minigpucluster \
    --node-count 1 \
    --node-vm-size Standard_B2s \
    --load-balancer-sku basic \
    --node-osdisk-size 32 