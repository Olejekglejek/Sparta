# Test for Kubernetes cluster with jenkins

## Contents
- [Kubernetes](#kubernetes)
  - [Bare Metal Installation](#bare-metal-installation)
  - [K3S Lightweight Kubernetes Installation](#k3s-lightweight-kubernetes-installation)
- [Portainer](#portainer)
- [References](#references)
## Tools
- Terraform
- Kubernetes (rancher K3S)
- Docker
- Portainer
- New Relic

## Kubernetes
### Bare Metal Installation
The bare metal version of kubernetes can be installed with the `kubeadm` tool.
In short, kubernetes can be installed manualli with the below steps
The steps to installing kubernetes manually (with `kubeadm`) are as follows:
- Provision servers (master & workers)
- Download `ssh` key
- `chmod 400` the key
- `ssh` in all servers

Then for each server:
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
```
- Install  `kubeadm`, `kubelet` and `kubectl`
```
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
# prevent above tools to be automatically installed, upgraded or removed
sudo apt-mark hold kubelet kubeadm kubectl
```
- Update `iptables` to allow bridge networking
```
# Update networking (set iptables to allow bridge networking)
cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF

sudo sysctl --system
```
The above commands are included in a provisioning file that is run on every server with Terraform

What is left is to follow a set of instructions for the initialisation of kubeadm and to add each of the nodes with the output token
On the master node:
```
sudo kubeadm init --pod-network-cidr=10.10.0.0/16
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

#Install networking solution (weave net)
#kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
# Install flannel CNI
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml


# Master node should show up on kubectl get nodes
```


## K3S
### K3S Lightweight Kubernetes Installation 


Create server:
```
curl -sfL https://get.k3s.io | sh -
# To avoid sudo use --write-kuebconfig setting
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--write-kubeconfig=/home/ubuntu/.kube/config --write-kubeconfig-mode=644" sh -
```
To install docker as the container runtime, the following script can be used:
````
curl https://releases.rancher.com/install-docker/19.03.sh | sh
```
Or it can be installed by following the docker 
```
# Install k3s with docker opiton
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--write-kubeconfig=/home/ubuntu/.kube/config --write-kubeconfig-mode=644" sh -s - --docker
````
For agents / workers, we need to edit the `K3S_URL` and `K3S_TOKEN` environment vars
The token is stored on the main server at `/var/lib/rancher/k3s/server/node-token`

We can use **private ips** to connect to the 
```
curl -sfL https://get.k3s.io | K3S_URL=https://myserver:6443 K3S_TOKEN=mynodetoken sh -
```
### Registering Agents 
Write the `kubeadm join` command that is the output at the end of the `kubeadm init` command to the other two nodes.
```
kubeadm join 12.1.1.11:6443 --token 6xsm11.vyefmu4i0dg5vgmw \
	--discovery-token-ca-cert-hash sha256:922cc55dfd1728633bbdd266e50e398d199fe52c41134ae7e66964a37e215f52
```
If we are using a single node cluster, we need to remove the `Taint` from the master node:
```
kubectl taint node <node-name> node-role.kubernetes.io/master:NoSchedule-
```
### Networking
The default networking solution for k3s is Traefick.
Traefick binds the ports `80`, `8080` and `443` in the cluster.

## Portainer
Portainer is a lightweight management UI for docker. We use it to view the containers that are currently running on the system.
To install portainer as a Docker container, (independent of kubernetes), we create a volume and attach it to the conainer:
```sh
docker volume create portainer_data
docker run -d -p 8800:8000 -p 9900:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce
```
The external ports are changed to `8800` and `9900` as the other ports are used by other services in the cluster.

> Make sure to allow the ports in the security group, if AWS is used.

## Kubernetes Dashboard
The Kubernetes Dashboard is a web based UI provided by the Kubernetes team, however it is not enabled by default. It needs to be installed, as a kubernetes deployment:
```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.2.0/aio/deploy/recommended.yaml
```
In the above file, the required namespaces, role bindings, service accounts and deployments are declared. 
But we still need to create an admin-user. To do this we create a `admin-user-role.yaml` yaml file to add the following:
```
apiVersion: v1
kind: ServiceAccount
metadata:
  name: admin-user
  namespace: kubernetes-dashboard

---
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRoleBinding
metadata:
  name: admin-user
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: cluster-admin
subjects:
- kind: ServiceAccount
  name: admin-user
  namespace: kubernetes-dashboard
```
The file is applied, 

## New Relic
The new relic installation is easily followed from the steps on the website.
Firstly an account needs to be made, then a host is added by choosing Linux deployment and following the rest of the commands

## References
- [Installing kubeadm](https://v1-18.docs.kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/)
- [Creating a cluster with kubeadm](https://v1-18.docs.kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/)
- [Cluster Networking solutions](https://v1-18.docs.kubernetes.io/docs/concepts/cluster-administration/networking/#how-to-implement-the-kubernetes-networking-model)
- [Install Helm](https://helm.sh/docs/intro/install/)
- [Install Portainer as Container](https://documentation.portainer.io/v2.0/deploy/ceinstalldocker/)
