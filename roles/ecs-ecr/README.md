# Amazon ECS / ecr

Setting up
https://docs.aws.amazon.com/AmazonECS/latest/developerguide/get-set-up-for-amazon-ecs.html

## Create an IAM Role for your Container Instances and Services

## Create a Key Pair

https://docs.aws.amazon.com/AmazonECS/latest/developerguide/get-set-up-for-amazon-ecs.html#create-a-key-pair

## Create a Security Group

ecs-instances-default-cluster

Consider HTTP, HTTPS, SSH ports

https://docs.aws.amazon.com/AmazonECS/latest/developerguide/get-set-up-for-amazon-ecs.html#create-a-base-security-group


## CLI

https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_AWSCLI_EC2.html#AWSCLI_EC2_create_cluster

### Step 1: (Optional) Create a Cluster

### Step 2:  Launch ECS Container instances
https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html

Inputs:
 * Number of instances
 * Network - vpc
 * Subnet (AZ)
 * Auto-assign Public IP (true)
 * role = ecsInstanceRole
 * Config
 * Storage
 * SecurityGroup

AMI:
eu-west-1	ami-c91624b0

https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html

### Step 5: Register a Task Definition

Task definitions are lists of containers grouped together, they are given a 'family' name

### Step 7: Run a Task
After you have registered a task for your account and have launched a container instance that is registered to your cluster `run-task`


## Role guide_aws

https://docs.aws.amazon.com/AmazonECS/latest/developerguide/instance_IAM_role.html

https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service_IAM_role.html
