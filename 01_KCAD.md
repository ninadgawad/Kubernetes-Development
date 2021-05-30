# Kubernetes Certified Application Developer

### Services
watch kubectl get services

### Logs last 10 lines 
kubectl exec pod-redis -- tail -10 /log/redis.logs

### Auto load kubectl shell completions for your current Bash session
source <(kubectl completion bash)

### Explain the readinessProbe
kubectl explain pod.spec.containers.readinessProbe
