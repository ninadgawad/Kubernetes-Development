# Kubernetes


## Imperative Commands


### Find all pods in a default namespace 
kubectl get pods -n default

### Create a pod redis with label name as ninad and using with exposing port 8080
kubectl run redis --image=redis -l name=ninad --port 8080

### Create deployment with name nginx-deploy and image nginx with 5 replicas in namespace development
kubectl create deploy nginx-deploy --image=redis --replicas=5  -n development

### Config Maps
kubectl get configmaps
kubectl create configmap webapp-config-map --from-literal=APP_COLOR=darkblue
