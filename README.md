# What is Kubernetes (k8s)
Its a open source container orchestration tool designed to automate, deploying, scaling and operating containerized applications. Its a distributed system. Can use different container runtimes. 

## Key features:
1. Declarative configurations
2. Deploy Containers
3. Wire up networks
4. Expose and scale services
5. Atuomated deployment rollout and roolback 
6. RBAC
7. Persistent volume management
8. Seamless horizontal scalling
9. Supports Linux & Windows Clusters


## K8s Terms
- Clusters
- Nodes (master & worker)
- Pods
- Services
- Deployments

## Other tools and Competitiors
1. DC/OS
2. Amazon ECS
3. Docker Swarm Mode

## Deploying Kubernetes
- [Docker Desktop](https://docs.docker.com/docker-for-windows/install/)
- [Minikube](https://minikube.sigs.k8s.io/docs/start/)
- kubeadm

## K8s Architecture 
- Its a container orchestration tool 
- Composed of group of Nodes
- Conatiners run in a Pod
- Nodes are machine in clustres 
- Control plane run's on master node and schedules containers on thde nodes
- Pod can have one or more containers
- K8s service exposes Pods to Cluster and outside them 


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

## Secrets 
kubectl get secrets
kubectl describe secret <secret-name>
kubectl create secret generic some-secret --from-literal=SOME_VAR=SomeTopSecret --from-literal=ANOTHER_VAR=SomeAnotherValue

## Get the Pod Definition in yaml format 
kubectl get pod pod-name -o yaml > pod-definition.yaml

## Get details about pods definition file format and object
kubectl  explain pods --recursive 
kubectl  explain pods --recursive | less
kubectl  explain pods --recursive | grep -A10 envFrom

## Get Volumnes 
kubectl get pv pvc 


---
## References
https://kubernetes.io/docs/home/
