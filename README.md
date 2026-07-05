# AWS Cloud Infrastructure Project

Production-style AWS cloud infrastructure deployed with Terraform, Docker, EC2, IAM, S3, and CloudWatch.

## Architecture Diagram

![Architecture Diagram](docs/architecture-diagram.png)



## Live Demo

**Application URL**

http://3.236.135.37

**Current Status**

✅ Hosted on Amazon EC2  
✅ Managed with Terraform  
✅ Dockerized Nginx web server  
✅ Monitored with Amazon CloudWatch  



## Project Overview

This project demonstrates how to design, deploy, and manage cloud infrastructure on Amazon Web Services using Infrastructure as Code.

The infrastructure is fully automated with Terraform and includes networking, compute, security, storage, monitoring, and containerization components commonly used by Cloud Engineers, DevOps Engineers, Cloud Administrators, and Systems Engineers.

The deployed environment includes a custom VPC, public subnet, internet gateway, route table, security group, EC2 instance, Docker container, Nginx web server, IAM role, S3 bucket, and CloudWatch dashboard.



## Infrastructure Components

| Component | Purpose |
|---|---|
| Terraform | Defines and deploys AWS infrastructure as code |
| Amazon VPC | Creates an isolated cloud network |
| Public Subnet | Hosts the EC2 instance with internet access |
| Internet Gateway | Allows public internet traffic |
| Route Table | Routes public traffic to the internet gateway |
| Security Group | Allows HTTP and SSH traffic |
| Amazon EC2 | Hosts the web server |
| Docker | Runs the web server inside a container |
| Nginx | Serves the project website |
| IAM Role | Grants controlled access to AWS services |
| Amazon S3 | Provides secure storage |
| Amazon CloudWatch | Monitors EC2 CPU utilization |



## Deployment Screenshots

### Live Website

![Live Website](docs/live-website.png)

### EC2 Instance

![EC2 Instance](docs/ec2-instance.png)

### CloudWatch Dashboard

![CloudWatch Dashboard](docs/cloudwatch-dashboard.png)



## Skills Demonstrated

- AWS cloud infrastructure deployment
- Infrastructure as Code with Terraform
- EC2 instance provisioning
- VPC networking
- Public subnet and internet gateway configuration
- Route table configuration
- Security group configuration
- Docker container deployment
- Nginx web server hosting
- IAM role and policy configuration
- S3 storage integration
- CloudWatch monitoring
- Git and GitHub version control
- Technical documentation



## Project Structure

```text
aws-cloud-infrastructure-project/
│
├── docs/
│   ├── architecture-diagram.png
│   ├── live-website.png
│   ├── ec2-instance.png
│   └── cloudwatch-dashboard.png
│
├── terraform/
│   ├── Dockerfile
│   ├── iam.tf
│   ├── index.html
│   ├── main.tf
│   ├── monitoring.tf
│   ├── outputs.tf
│   ├── provider.tf
│   ├── style.css
│   ├── terraform.tfvars
│   ├── variables.tf
│   └── versions.tf
│
├── .gitignore
└── README.md
```