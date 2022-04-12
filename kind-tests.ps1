# kind - Quick Start:
# https://kind.sigs.k8s.io/docs/user/quick-start/

kubectl config get-contexts

kind create cluster --name kind-01

kind create cluster --name kind-02

kubectl config get-contexts

kubectl config use-context kind-kind-01

kubectl create namespace tests01
kubectl get namespaces

kubectl apply -f ./deployment.yml -n tests01
kubectl apply -f ./service.yml -n tests01
kubectl port-forward deployment/sitecontagem 7001:80 -n tests01

kubectl config use-context kind-kind-02

kubectl create namespace tests02
kubectl create namespace tests03
kubectl get namespaces

kubectl config use-context kind-kind-01

kubectl get namespaces

kubectl config use-context kind-kind-02

kubectl get namespaces

kind delete cluster --name kind-01

kind delete cluster --name kind-02