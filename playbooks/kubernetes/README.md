# Kubernetes on AWS playbooks

## Pre-Requisites

VPC, Subnets (Public, Private)
Internet GATEWAY
Key-pair that will be used for all Instances, to be able to SSH into them

## Parameters
 * AWS region
 * AZ's - how available ( 1, 3) - [a], [a,b,c]
 * count-masters
 * count-workers
 * type:  't2.micro'
 * base ami -  "ami-1967056a" // Unbuntu 16.04 LTS HVM, EBS-SSD

## GATEWAY

A Kubernetes API Load Balancer  

 * Elastic Load Balancer
   - subnets
   - cross_zone_load_balancing = false

## Domain
 * etcd VM's
   - public ip = true
 * controller VM's
 * worker VM's
   - source_dest_check = false

### Roles / groups

Define an  IAM Role, Role Policy and Instance profile for Controller instances

 * kubernetes
   - Role policy
 * Security Group 'kubernetes_api'
   - Ingress - Port 6443
   - Egress - All outbound traffic

 ```
 {
  "Version": "2012-10-17",
  "Statement": [
    { "Action" : ["ec2:*"], "Effect": "Allow", "Resource": ["*"] },
    { "Action" : ["elasticloadbalancing:*"], "Effect": "Allow", "Resource": ["*"] },
    { "Action": "route53:*", "Effect": "Allow",  "Resource": ["*"] },
    { "Action": "ecr:*", "Effect": "Allow", "Resource": "*" }
  ]
}
```

# Local re-install

https://stackoverflow.com/questions/45002364/how-to-upgrade-minikube

```
minikube delete
sudo rm -rf ~/.minikube
sudo rm -rf /usr/local/bin/minikube    # unlink existing minikube
brew update
brew cask reinstall minikube
minikube start
```

## Install tiller / helm

```
brew install kubernetes-helm
helm init
```

```
helm install stable/grafana
```

# ansible

## k8s_raw

https://docs.ansible.com/ansible/2.5/modules/k8s_raw_module.html

## helm

https://docs.ansible.com/ansible/2.5/modules/helm_module.html?highlight=helm


# References

https://opencredo.com/kubernetes-aws-terraform-ansible-1/

https://medium.com/@anthonyganga/getting-started-with-helm-tiller-in-kubernetes-part-one-3250aa99c6ac

https://github.com/kubernetes/charts/tree/master/stable
