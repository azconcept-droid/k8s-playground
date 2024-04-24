# How to Access a Remote Kubeadm Cluster from Your Local Machine

**Resource**
- [How To Setup Kubernetes Cluster Using Kubeadm](https://devopscube.com/setup-kubernetes-cluster-kubeadm/)
- [Accessing remote kubernetes Cluster](https://k21academy.com/docker-kubernetes/accessing-remote-kubeadm-cluster/)  
**Bonus**
- [Become A DevOps Engineer in 2024: [A Practical Roadmap]](https://devopscube.com/)


## Getting started

1. Install kubectl on ubuntu
    ```
    sudo snap install kubectl
    ```

2. Create an env variable KUBECONFIG
    ```
    export KUBECONFIG=~/.kube/config
    ```
3. Copy the config file from your remote kubeadmin cluster to your local pc
    ```
    scp /etc/kubernetes/path/to/config-file username@local_server:/path/to/.kube/directory
    ```

4. Check config file
    ```
    kubectl config view
    ```

5. Confirm you are connected to the cluster using
    ```
    kubectl cluster-info
    ```

6. Get namespaces in the cluster
    ```
    kubectl get ns
    ```

7. Create a new namespace and use it has current namespace to deploy into
    ```
    kubectl config set-context $(kubectl config current-context) --namespace=<give it a name>
    ```


## Setting up nginx ingress controller

**Resource**

- [setup nginx ingress controller on baremetal](https://kubernetes.github.io/ingress-nginx/deploy/#bare-metal-clusters)
- [Kubernetes Ingress Tutorial For Beginners](https://devopscube.com/kubernetes-ingress-tutorial/)
- [How to Setup Nginx Ingress Controller On Kubernetes – Detailed Guide](https://devopscube.com/setup-ingress-kubernetes-nginx-controller/)

1. Apply the deplyment file
    ```
    kubectl apply -f deploy.yaml
    ```
