**Networking Concepts VPC -Subnet- Internet gateway- NACL - research -**

# AWS

# 2 Tier app deployment on AWS

# Ec2 instance for our nodeapp

# Ec2 instance for our DB

## AWS task

- Launch an ec2 instance with correct version of ubuntu
- ssh into the instance
- update
  `sudo apt-get update`
- upgrade `sudo apt-get upgrade`
- install nginx
  `sudo apt-get install nginx`
- check status
  `sudo systemctl status nginx`
- access nignx page with public IP
- share the IP in the chat

**second iteration**

- copy code from OS to AWS EC2 app with scp command
- install required dependencies for nodejs

**third iteration**

- create an ec2 instance for db
- install mongodb with required dependencies
- allow access only from the app instance
- connect the app with db to fetch the data
- app to work with reverse proxy without 3000 port, fibu, /- posts

**Networking and Security**

- Research what is a Security Group - VPC, public and private subnets, internet gateway, route tables, NACLs

Security group - firewall only on the instance level

![](awsAZ.png)
![](awsRegionAZ.png)

#

![](awsVpcSubnet.png)
![](Cloud2tierArch.png)
![](connectToInstance.png)
![](HybridCloud.png)
![](instances.png)
![](monolithArch.png)
![](publicIpFronConnectTab.png)
![](2tierArch.png)

### What is a VPC

- Virtual Private Cloud to define and control network
- VPC enables to launch AWS resources into a virtual network that we have. This virtual network closely resembles a traditional network that you'd operate in your data center
- Allows the EC2 instances to communicate with each other, we can also create multiple subnets within out VPC
- It benefits us with scalability of infrastructure of AWS

### Internet gateway

- Is the point which allows us to connect to internet
- A gateway that you attach to your VPC to enable communication between resources in your VPC and the internet

### What is a subnet

- Network inside the VPC
- A range of IP adresses in your VPC
- A subnet could have multiple EC2 instances

### Route Tables

- Set of rules, called routes
- Are used to determine where external network trafic is directed

### NACLS

- NACLS are an added layer of defence they work at the network level
- NACLS are stateless, you have to have rules to allow the request to come in and to allow the response to go back

### NACLS inbound Rules

- 100 allows inbound HTTP traffic from any IPv4 address.
- 110 allows inbound SSH trafic from your network over the internet
- 120 allows inbount return traffic from hosts on the internet that are responding to

### NACLS outbound Rules

- 100 to allow port 80
- 110 we need the CIRDR block and allow 27017 for outbound access to out Mongo DB serverin private subnet
- 120 to allow short lived ports between 1024 - 65535

### What is Security Group

- Work as a firewall on the instance level
- they are attached to the VPC and subnet
- they have inbound and outbound traffic rules defined
- S.G. are stateful, if you allowed inbound rule that will automatically be allowed outbound

### What are the Ephemeral ports/Dynamic ports

- short lived ports, automatically allocated based on the demand (ex. port 80)
- Allows outbound responses to clients on the internet
- port range 1024-65535

![](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html)

### Steps for app security Group

- Create a security group for the app
- allow port 80 to all
- allow port 22 for ssh

### Outbound rules

- Allow all

(for the private SG)

- Create a security group for the database
- Allow app security group (27017)

ssh -i ~/.ssh/DevOpsStudent.pem -o ProxyCommand="ssh -i ~/.ssh/DevOpsStudent.pem -W %h:%p ubuntu@54.171.233.174" ubuntu@10.0.2.121

create a new repo for Linux commands and share it

http://permissions-calculator.org/
link to check permissions

# Linux

- how to check Hidden Files and Directories
  `ls -a`
- The Manual, Flags
- what is a wildecards and How to use Wildcards

Wildcards (also referred to as meta characters) are symbols or special characters that represent other characters. You can use them with any command such as ls command or rm command to list or remove files matching a given criteria, receptively.

- how can you do Process Management `top` and `ps`
- What is Currently Running on your system
- Killing a process/Crashed Process

There are various commands you can use to kill a process — kill, killall, pkill and top.

By default, For example, to kill a process named “firefox”, run:

`killall firefox`
To forcibly kill the process with SIGKILL, run:

`killall -9 firefox`
You can also use -SIGKILL instead of -9.

If you want to kill processes interactively, you can use -i like so:

`killall -i firefox`
If you want to kill a process running as a different user, you can use sudo:

`sudo killall firefox`
You can also kill a process that has been running for a certain period of time with the -o and -y flags. So, if you want to kill a process that has been running for more than 30 minutes, use:

`killall -o 30m <process-name>`

- how to check any process running in Foreground and Background Jobs
- how to stop/kill any process running in Foreground and Background Jobs
- How to change permissions with chmod command
- how to check permission for files/dir
- what does 777, 400, 600, r,w,e
- how to use head, tail, sort, nl (number line), wc (word count)
- what is pipping and redirection, HINT > indicates to the command line
- what is STDIN standard input and output

# Bastion Server Lab - Jump Box

## Timings

45 - 60 Minutes

## Summary

Now that we've created a private subnet for our database instances we have a problem. We no longer have access to them via SSH.

To solve this we need to create a bastion server, also known as a jump box so that we can log in to the bastion and then from there access our database server to perform updates.

## Tasks

- What is a Bastion Server ( Jump Box)
- benefits and use case
- Create a new public subnet called bastion
- Create a new ubuntu instance called bastion in this subnet
- Create a security group that only allows access on port 22 from your IP
- Create a security group called bastion-access that only allows ssh access from the bastion group
- SSH to your bastion server and from there SSH to your database instance
