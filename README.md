# Kubernetes


## Imperative Commands

### Create a pod redis with label name as ninad and using with exposing port 8080
kubectl run redis --image=redis -l name=ninad --port 8080

### Create deployment with name nginx-deploy and image nginx with 5 replicas in namespace development
kubectl create deploy nginx-deploy --image=redis --replicas=5  -n development

