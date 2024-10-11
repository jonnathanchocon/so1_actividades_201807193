# Actividad 8 - Primeros pasos con K8s

### Realizar lo siguiente

* Instalar un ambiente local de Kubertenes utilizando minikube, kind o Docker Desktop

* Desplegar un contenedor de algún web server, apache o nginx por ejemplo, en el Cluster de K8s Local.

* Contestar a siguiente pregunta. ¿En un ambiente local de Kubernetes
  existen los nodos masters y workers, como es que esto funciona?

* Crear un md file colocando los pasos necesarios para el punto 1 y 2, y
  contestando la pregunta del punto 3.


## 1. Instalar un ambiente local de Kubertenes utilizando minikube, kind o Docker Desktop

* Comandos para instalar **minikube**

```bash
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64
```

* Iniciar el cluster

```bash
minikube start
```

## 2. Desplegar un contenedor de algún web server, apache o nginx por ejemplo, en el Cluster de K8s Local.

[./deployment.yaml](./deployment.yaml)

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
  labels:
    app: nginx
spec:
  replicas: 3
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
        - name: nginx
          image: nginx:1.27.2
          ports:
            - containerPort: 80

---

apiVersion: v1
kind: Service
metadata:
  name: nginx-service
spec:
  selector:
    app: nginx
  ports:
    - protocol: TCP
      port: 8080
      targetPort: 80
  type: LoadBalancer
```

* Crear deployment con el siguiente comando

```
kubectl apply -f deployment.yaml
```

## 3. Contestar a siguiente pregunta. ¿En un ambiente local de Kubernetes existen los nodos masters y workers, como es que esto funciona?

El nodos worker alojan pods y los nodos master
administran los nodos worker y los pods en el clúster, es decir los nodos
master son los encargados de establecer en que nodo
worker se va a alojar cada pod.
