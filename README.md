# Test for Kubernetes cluster with jenkins

## Contents
- [Kubernetes](#kubernetes)
- [Portainer](#portainer)
- [References](#references)
## Tools
- Terraform
- Kubernetes
- Jenkins

## Kubernetes
### Installation
Kubernetes is installed with the `kubeadm` tool.
The steps to installing kubernetes manually (with `kubeadm`) are as follows:
- Provision servers (master & workers)
- Download `ssh` key
- `chmod 400` the key
- `ssh` in all servers

For each server:
- Install `docker` with 
```sh
sudo apt-get update && sudo apt-get install -y apt-transport-https curl
# Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# Add the Docker apt repository:
sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"

sudo apt-get install -y docker-ce

#install kubelet, kubeadm and kubecul
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
# prevent above tools to be automatically installed, upgraded or removed
sudo apt-mark hold kubelet kubeadm kubectl

# Update networking (set iptables to allow bridge networking)
cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF

sudo sysctl --system
```
The above commands were put in the provisioning shell that is executed after every instance is provisioned.

What is left is to follow a set of instructions for the initialisation of kubeadm and to add each of the nodes with the output token
On the master node:
```
sudo kubeadm init --pod-network-cidr=10.10.0.0/16
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

#Install networking solution (weave net)
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"

# Master node should show up on kubectl get nodes
```


Write the `kubeadm join` command that is the output at the end of the `kubeadm init` command to the other two nodes.
```
kubeadm join 12.1.1.11:6443 --token 6xsm11.vyefmu4i0dg5vgmw \
	--discovery-token-ca-cert-hash sha256:922cc55dfd1728633bbdd266e50e398d199fe52c41134ae7e66964a37e215f52
```
If we are using a single node cluster, we need to remove the `Taint` from the master node:
```
kubectl taint node <node-name> node-role.kubernetes.io/master:NoSchedule-
```





## References
- [Installing kubeadm](https://v1-18.docs.kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/)
- [Creating a cluster with kubeadm](https://v1-18.docs.kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/)
- [Cluster Networking solutions](https://v1-18.docs.kubernetes.io/docs/concepts/cluster-administration/networking/#how-to-implement-the-kubernetes-networking-model)
- [Install Helm](https://helm.sh/docs/intro/install/)
