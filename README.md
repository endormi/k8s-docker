# vue-k8s-docker

[Docker image](https://github.com/endormi/vue-docker-image).

## How to use Minikube

**Minikube** with `Hyper-V`:

**Note**: Running as Administator is a must to run **Minikube**.

First-time running:

> On windows 10 pro, otherwise just `minikube start`. More on [Kubernetes' official docs](https://kubernetes.io/docs/tasks/tools/install-minikube/).

```sh
minikube start --vm-driver=hyperv --hyperv-virtual-switch=Minikube
```

> **Minikube** is the name of the virtual switch I made. Also, when starting **Minikube** again, you can just use `minikube start`.

Dashboard:

```sh
minikube dashboard
```

Stopping **Minikube**:

```sh
minikube stop
```

## Using Kubernetes

Deploy to Kubernetes:

```sh
kubectl apply -f deployment.yaml
```

Get deployment:

```sh
kubectl get deployment
```

You should see something like this:

```sh
NAME                    READY   UP-TO-DATE   AVAILABLE   AGE
k8s-docker-deployment   2/2     2            2           30m
```

Get pods:

```sh
kubectl get pods
```

You should see something like this:

```sh
NAME                                     READY   STATUS    RESTARTS   AGE
k8s-docker-deployment-54f57cf6bf-5pjj2   1/1     Running   0          31m
k8s-docker-deployment-54f57cf6bf-9fqht   1/1     Running   0          31m
```

Adding a service:

```sh
kubectl apply -f service.yaml
```

Get service:

```sh
kubectl get service
```

You should see something like this:

```sh
NAME                 TYPE        CLUSTER-IP    EXTERNAL-IP   PORT(S)        AGE
k8s-docker-service   NodePort    IP            <none>        80:31000/TCP   26m
```

Describe service:

```sh
kubectl describe service k8s-docker-service
```

You should see something like this:

```sh
Name:                     k8s-docker-service
Namespace:                default
Labels:                   <none>
Annotations:              kubectl.kubernetes.io/last-applied-configuration:
                            {"apiVersion":"v1","kind":"Service","metadata":{"annotations":{},"name":"k8s-docker-service","namespace":"default"},"spec":{"ports":[{"nod...
Selector:                 app=nginx
Type:                     NodePort
etc.
```

Get service endpoints:

```sh
kubectl get endpoints k8s-docker-service
```
