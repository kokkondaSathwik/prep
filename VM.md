### Virtual Machines

- The main objective of the Devops Engineers is to improve the efficiency and use of all resources.

- In general, Dev teams used to built the applications in the local system and servers are the things they used to deploy their applications for clients

- To avoid the inefficiency the concept of virtualization comes into picture.

![Concept of Virtualization,Hypervisor,VM wares](image.png)

- Hypervisor is the software we install in the server to create the virtual machines and assign the each VM to the teams to increase the efficiency.

- VMware,Xen are some of the examples of Hypervisors

- In AWS VM is called as Ec2 instance.

![Real working of creating vm and aws giving vm to the user](image-1.png)

### How to create virtual machines on AWS

![process of creating ec2 instance on aws](image-2.png)
- Manual process
- First user have to login to the aws console
- create the ec2 instance
- In return it will return the ip address and key credentials to us

![Automation of creating ec2 instances using aws ec2 api](image-3.png)
- Automation process
- Devops engineers at amazon created an api for each ec2 instance
- if the requests are valid,authenticated and authorized properly we can get the ip address
- we can access those api by writing scripts
- those scripts can be written using
    - AWS CLI
    - AWS API (BOTO3- PYTHON MODULE)
    - AWS CFT
    - AWS CDK(cloud deployment kit)
    - terraform

