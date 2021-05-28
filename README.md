# Cloud_Computing

## What is cloud computing?

Cloud computing is the on-demand delivery of IT resources over the Internet with pay-as-you-go pricing. Instead of buying, owning, and maintaining physical data centers and servers, you can access technology services, such as computing power, storage, and databases, on an as-needed basis from a cloud provider like Amazon Web Services (AWS), Microsoft Azure, Google Cloud, IBM Cloud, Oracle etc.

## Who is using cloud computing?

Organizations of every type, size, and industry are using the cloud for a wide variety of use cases, such as data backup, disaster recovery, email, virtual desktops, software development and testing, big data analytics, and customer-facing web applications. For example, healthcare companies are using the cloud to develop more personalized treatments for patients. Financial services companies are using the cloud to power real-time fraud detection and prevention. And video game makers are using the cloud to deliver online games to millions of players around the world.

## Benefits of cloud computing

- Cost

Cloud computing eliminates the capital expense of buying hardware and software and setting up and running on-site data centres – the racks of servers, the round-the-clock electricity for power and cooling and the IT experts for managing the infrastructure. It adds up quickly.

- Speed

Most cloud computing services are provided as self service and on demand, so even vast amounts of computing resources can be provisioned in minutes, typically with just a few mouse clicks, giving businesses a lot of flexibility and taking the pressure off capacity planning.

- Global scale

The benefits of cloud computing services include the ability to scale elastically. In cloud speak, that means delivering the right amount of IT resources – for example, more or less computing power, storage, bandwidth – right when they’re needed, and from the right geographic location.

- Productivity

On-site data centres typically require a lot of “racking and stacking” – hardware setup, software patching and other time-consuming IT management chores. Cloud computing removes the need for many of these tasks, so IT teams can spend time on achieving more important business goals.

- Performance

The biggest cloud computing services run on a worldwide network of secure data centres, which are regularly upgraded to the latest generation of fast and efficient computing hardware. This offers several benefits over a single corporate data centre, including reduced network latency for applications and greater economies of scale.

- Reliability

Cloud computing makes data backup, disaster recovery and business continuity easier and less expensive because data can be mirrored at multiple redundant sites on the cloud provider’s network.

- Security

Many cloud providers offer a broad set of policies, technologies and controls that strengthen your security posture overall, helping to protect your data, apps and infrastructure from potential threats.

![](Cloud.png)

## Types of cloud computing

Not all clouds are the same and not one type of cloud computing is right for everyone. Several different models, types and services have evolved to help offer the right solution for your needs.

First, you need to determine the type of cloud deployment, or cloud computing architecture, that your cloud services will be implemented on. There are three different ways to deploy cloud services: on a public cloud, private cloud or hybrid cloud.

- Public cloud

Public clouds are owned and operated by third-party cloud service providers, who deliver their computing resources such as servers and storage over the Internet. Microsoft Azure is an example of a public cloud. With a public cloud, all hardware, software and other supporting infrastructure are owned and managed by the cloud provider. You access these services and manage your account using a web browser.

- Private cloud

A private cloud refers to cloud computing resources used exclusively by a single business or organisation. A private cloud can be physically located on the company’s on-site data centre. Some companies also pay third-party service providers to host their private cloud. A private cloud is one in which the services and infrastructure are maintained on a private network.

- Hybrid cloud

Hybrid clouds combine public and private clouds, bound together by technology that allows data and applications to be shared between them. By allowing data and applications to move between private and public clouds, a hybrid cloud gives your business greater flexibility, more deployment options and helps optimise your existing infrastructure, security and compliance.

![](HybridCloud.png)

## Types of cloud services: IaaS, PaaS, serverless and SaaS

Most cloud computing services fall into four broad categories: infrastructure as a service (IaaS), platform as a service (PaaS), serverless and software as a service (SaaS). These are sometimes called the cloud computing stack because they build on top of one another. Knowing what they are and how they’re different makes accomplishing your business goals easier.

- Infrastructure as a service (IaaS)

The most basic category of cloud computing services. With IaaS, you rent IT infrastructure – servers and virtual machines (VMs), storage, networks, operating systems – from a cloud provider on a pay-as-you-go basis.

- Platform as a service (PaaS)

Platform as a service refers to cloud computing services that supply an on-demand environment for developing, testing, delivering and managing software applications. PaaS is designed to make it easier for developers to quickly create web or mobile apps, without worrying about setting up or managing the underlying infrastructure of servers, storage, network and databases needed for development.

- Serverless computing

Overlapping with PaaS, serverless computing focuses on building app functionality without spending time continually managing the servers and infrastructure required to do so. The cloud provider handles the setup, capacity planning, and server management for you. Serverless architectures are highly scalable and event-driven, only using resources when a specific function or trigger occurs.

- Software as a service (SaaS)

Software as a service is a method for delivering software applications over the Internet, on demand and typically on a subscription basis. With SaaS, cloud providers host and manage the software application and underlying infrastructure, and handle any maintenance, such as software upgrades and security patching. Users connect to the application over the Internet, usually with a web browser on their phone, tablet or PC.

## Uses of cloud computing

You’re probably using cloud computing right now, even if you don’t realise it. If you use an online service to send emails, edit documents, watch films or TV, listen to music, play games, or store pictures and other files, it’s likely that cloud computing is making it all possible behind the scenes. The first cloud computing services are barely a decade old, but already a variety of organisations – from tiny start-ups to global corporations, from government agencies to non-profits – are embracing the technology for all sorts of reasons.

Here are a few examples of what’s possible today with cloud services from a cloud provider:

- **Create cloud-native applications**

Quickly build, deploy and scale applications – web, mobile and API. Take advantage of cloud-native technologies and approaches, such as containers, Kubernetes, microservices architecture, API-driven communication and DevOps.

- **Test and build applications**

Reduce application development cost and time by using cloud infrastructures that can easily be scaled up or down.

- **Store, back up and recover data**

Protect your data more cost-efficiently – and at massive scale – by transferring your data over the Internet to an offsite cloud storage system that’s accessible from any location and any device.

- **Analyse data**

Unify your data across teams, divisions and locations in the cloud. Then use cloud services, such as machine learning and artificial intelligence, to uncover insights for more informed decisions.

- **Stream audio and video**

Connect with your audience whenever, wherever, on any device with high-definition video and audio with global distribution.

- **Embed intelligence**

Use intelligent models to help engage customers and provide valuable insights from the data captured.

- **Deliver software on demand**

Also known as software as a service (SaaS), on-demand software lets you offer the latest software versions and updates around to customers – whenever they need it, regardless of where they are.

# (security group works as firewall for instance on machine)

## Devops 4 pillars

- Ease of use (easy to use, automated)
- Flexibility (scalable)
- Robustness (strong, secure, eficient)
- Cost (economical)

## For file transfer with `scp` command

scp -i ~/.ssh/DevOpsStudent.pem /home/oleg/Desktop/'what is devops' ubuntu@54.74.232.5:/home/ubuntu

## For folder transfer with `scp` command use `-r` flag

`scp -ri <pem file path> <file/folder path> ubuntu@<ip only (withot http and slashes)>:<path>`

# How to create an VPC

Create VPC

Create public sub-net

Create app
Make app work in new VPC

\***\*\*\*\*\***\*\*\***\*\*\*\*\***88
NACL - Extra level of security
AMI - provides information to launch instance
Needs to work after security

# FAQ

## How to transfer folder/file from local to cloud instance?

**using `scp` command**

1. Open terminal (for Mac and Linux users) or Bash sheel (for Windows users)
2. Use this structure `scp -ri <pem file path> <file/folder path> ubuntu@<ip only (withot http and slashes)>:<path on your cloud instance>`

_example._

scp -i ~/.ssh/DevOpsStudent.pem /home/johndoe/Desktop/app ubuntu@10.10.110.1:/home/ubuntu

**cloning the repo from online repository**

1. Open terminal (for Mac and Linux users) or Bash sheel (for Windows users)
2. Clone the repo into your cloud instance using _http_ protocol

`git clone https://github.com/johndoe/online_repo.git`
```
sudo echo "export DB_HOST=mongodb://db_private_ip:27017/posts" >> ~/.bashrc

sudo echo "export DB_HOST=mongodb://10.0.2.122:27017/posts" >> ~/.bashrc 

echo export DB_HOST="mongodb://10.0.2.122:27017/posts" | sudo tee -a /etc/profile
. /etc/profile

sudo -E npm install
sudo -E pm2 start app.js
```
