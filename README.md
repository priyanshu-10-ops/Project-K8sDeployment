# Kubernetes Application Deployment

A hands-on DevOps project demonstrating how to containerize a frontend application using Docker and deploy it onto a Kubernetes cluster using Kubernetes manifests.

## Overview

This project covers the fundamental DevOps workflow:

1. Build a frontend application using Vite.
2. Containerize the application using Docker.
3. Create Kubernetes resources using YAML manifests.
4. Deploy the application into a dedicated Kubernetes namespace.
5. Manage and monitor workloads using kubectl.

---

## Tech Stack

* Docker
* Kubernetes
* Vite
* JavaScript
* Tailwind CSS
* HTML/CSS

---

## Project Structure

```text
Project-K8sDeployment/
│
├── manifests/
│   ├── namespace.yaml
│   └── pod.yaml
│
├── src/
│
├── Dockerfile
├── index.html
├── package.json
├── package-lock.json
├── vite.config.js
├── tailwind.config.js
└── postcss.config.js
```

---

## Docker Setup

### Build Docker Image

```bash
docker build -t k8s-app .
```

### Run Container Locally

```bash
docker run -p 5173:5173 k8s-app
```

---

## Kubernetes Deployment

### Create Namespace

```bash
kubectl apply -f manifests/namespace.yaml
```

### Deploy Pod

```bash
kubectl apply -f manifests/pod.yaml
```

### Verify Deployment

```bash
kubectl get namespaces

kubectl get pods -A
```

### Inspect Pod

```bash
kubectl describe pod <pod-name>
```

### View Logs

```bash
kubectl logs <pod-name>
```

---

## Key Concepts Demonstrated

* Docker Image Creation
* Containerized Application Deployment
* Kubernetes Namespaces
* Kubernetes Pods
* YAML-based Infrastructure Configuration
* Cluster Resource Management using kubectl

---

## Learning Outcomes

Through this project, I gained practical experience with:

* Containerizing applications using Docker
* Writing Kubernetes manifest files
* Deploying workloads to a Kubernetes cluster
* Managing namespaces and pod resources
* Troubleshooting deployments using kubectl commands

---

## Future Enhancements

* Replace Pod with a Deployment resource
* Expose application using a Kubernetes Service
* Configure Ingress for external access
* Implement GitHub Actions CI/CD pipeline
* Deploy on Azure Kubernetes Service (AKS)
* Add monitoring using Prometheus and Grafana

---

## Author

**Priyanshu Kumar**

DevOps Enthusiast | Azure | Terraform | Docker | Kubernetes | CI/CD

Feel free to fork the repository, raise issues, or provide feedback.
