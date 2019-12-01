# Amazon ECS / ecr

![Deploy](./docs/ecs-ecr.svg)


# ansible

Run and setup the base [infra scripts](../../infra/README.md) first so you have your VPC and all networking ready.

```
cd ./roles/ecs-ecr/tasks

# Set up ECS EC2 Instances
ansible-playbook -vvv -i ../../../testing install-ecs.yml

# install and start Docker tasks on ECS (Plantuml docker)
ansible-playbook -vvv -i ../../../testing docker-tasks.yml

# Tear down

```

Setting up
https://docs.aws.amazon.com/AmazonECS/latest/developerguide/get-set-up-for-amazon-ecs.html

* vpc
* Public subnet(s)
* Internet Gateway
* Key Pair


## Create an IAM Role for your Container Instances and Services

Ansible IAM Roles
https://docs.ansible.com/ansible/2.5/modules/iam_role_module.html

'ecsInstanceRole' -  Amazon ECS Container Instance IAM Role
defaults/AmazoneEC2ContainerServiceForEC2Role.policy

'ecsServiceRole'
defaults/AmazoneEC2ContainerServiceRole.policy

## Create a Key Pair

ec2_key module

https://docs.aws.amazon.com/AmazonECS/latest/developerguide/get-set-up-for-amazon-ecs.html#create-a-key-pair

The private key file is automatically downloaded by your browser. The base file name is the name you specified as the name of your key pair, and the file name extension is .pem. Save the private key file in a safe place.

This is the only chance for you to save the private key file. You'll need to provide the name of your key pair when you launch an instance and the corresponding private key each time you connect to the instance.

Suggestion: Store in a secure s3 location

## Create a Security Group

ecs-instances-default-cluster (Regions)

Consider HTTP, HTTPS, SSH ports

HTTP : anywhere (0.0.0.0)
HTTPS : anywhere (0.0.0.0)
SSH:

connect to your container instance from your IP address using SSH

rules that allow inbound and outbound HTTP and HTTPS access from anywhere

https://docs.aws.amazon.com/AmazonECS/latest/developerguide/get-set-up-for-amazon-ecs.html#create-a-base-security-group


## CLI

https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_AWSCLI_EC2.html#AWSCLI_EC2_create_cluster

### Step 1: (Optional) Create a Cluster

https://docs.ansible.com/ansible/2.5/modules/ecs_cluster_module.html

### Step 2:  Launch ECS Container instances
https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html

Inputs:
 * Number of instances
 * Network - vpc
 * Subnet (AZ)
 * Auto-assign Public IP (true)
 * role = ecsInstanceRole
 * Config
   - Storage
 * SecurityGroup

AMI:
eu-west-1	ami-c91624b0

https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html

### Step 5: Register a Task Definition

Task definitions are lists of containers grouped together, they are given a 'family' name

https://docs.ansible.com/ansible/2.5/modules/ecs_taskdefinition_module.html

### Step 7: Run a Task
After you have registered a task for your account and have launched a container instance that is registered to your cluster `run-task`

https://docs.ansible.com/ansible/2.5/modules/ecs_task_module.html

# CI-CD ECS Deploy pipeline

For containers to be deployed into our cluster we will set up pipelines so they can deploy into it.

## Build Job Inputs

 * User, Access Keys, Secrets
 * AWS Region
 * ecs_cluster name 'ecs_cluster'
 * ecs service name
 * [AMI's for the EC2 / ECS](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html)

## Pseudo-Code

 * `build` build and unit test
 * `package` Package docker candidate build with build#
 * `deploy` ecs-deploy service based on new build

## Container build sets

Possible containers to hook into build pipeline

 * npiper/certbot-nginx (tags)
 * npiper/community.test (no tags yet)

# Refs - Deployment

http://haoliangyu.github.io/blog/2018/03/19/AWS-ECS-auto-deployment-with-Travis-CI/

https://github.com/silinternational/ecs-deploy

https://github.com/TetraTutorials/amazonecs_tutorial

[Sending Docker logs to Cloudwatch logs](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_cloudwatch_logs.html)

## Role guide_aws

https://docs.aws.amazon.com/AmazonECS/latest/developerguide/instance_IAM_role.html

https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service_IAM_role.html

https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI_tutorial_EC2.html

https://github.com/awslabs/ecs-refarch-continuous-deployment


https://github.com/aws-samples/aws-cicd-docker-containers
