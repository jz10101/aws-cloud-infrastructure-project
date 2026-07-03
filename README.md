# AWS Cloud Infrastructure Project

## Architecture Diagram

![Architecture Diagram](docs/architecture-diagram.png)

## Live Demo

**Application URL**

http://3.236.135.37

**Current Status**

✅ Running on Amazon EC2

**Cloud Region**

us-east-1

---

# Project Overview

This project demonstrates how to design, deploy, and manage a production-style cloud infrastructure environment on Amazon Web Services (AWS) using Infrastructure as Code (IaC).

The infrastructure is fully automated using Terraform and includes networking, compute, storage, identity and access management, monitoring, and containerization technologies commonly used by Cloud Engineers, DevOps Engineers, Cloud Administrators, and Systems Engineers.

The objective of this project is to showcase practical cloud engineering skills by deploying a secure, scalable, and automated cloud environment while following industry best practices.

---

# Project Objectives

- Build AWS infrastructure using Terraform
- Deploy a Dockerized web application
- Configure Amazon VPC networking
- Launch an EC2 web server
- Configure IAM Roles and Policies
- Create an Amazon S3 Bucket
- Implement CloudWatch monitoring
- Practice Infrastructure as Code (IaC)
- Demonstrate Git and GitHub version control
- Produce professional cloud documentation

---

# Architecture

Current infrastructure includes:

- Amazon VPC
- Public Subnet
- Internet Gateway
- Route Table
- Security Group
- Amazon EC2 Instance
- Docker Container
- Nginx Web Server
- Amazon S3 Bucket
- IAM Role
- IAM Policy
- IAM Instance Profile
- Amazon CloudWatch Dashboard

**Architecture Diagram**

(Will be added after project completion.)

---

# Infrastructure Components

## Amazon VPC

Provides an isolated virtual network where AWS resources are deployed.

## Public Subnet

Hosts the EC2 web server.

## Internet Gateway

Allows internet communication with resources inside the VPC.

## Route Table

Routes internet traffic between the subnet and Internet Gateway.

## Security Group

Acts as the virtual firewall controlling inbound and outbound traffic.

## Amazon EC2

Runs the Docker container that hosts the website.

## Docker

Containerizes the Nginx web application.

## Amazon S3

Provides scalable cloud storage.

## IAM

Allows AWS services to securely communicate without storing credentials.

## CloudWatch

Monitors infrastructure performance and CPU utilization.

---

# Technologies Used

## Cloud Platform

- Amazon Web Services (AWS)

## Infrastructure as Code

- Terraform

## Containerization

- Docker
- Nginx

## Compute

- Amazon EC2

## Networking

- Amazon VPC
- Public Subnet
- Internet Gateway
- Route Tables
- Security Groups

## Storage

- Amazon S3

## Identity & Security

- AWS IAM

## Monitoring

- Amazon CloudWatch

## Operating System

- Amazon Linux 2023

## Development Tools

- Visual Studio Code
- Git
- GitHub

---

# Deployment Workflow

The infrastructure deployment process follows these steps:

1. Initialize Terraform
2. Validate Terraform configuration
3. Generate Terraform execution plan
4. Deploy AWS infrastructure
5. Configure IAM Roles and Policies
6. Create Amazon S3 Bucket
7. Launch EC2 Instance
8. Deploy Docker container
9. Configure CloudWatch Dashboard
10. Verify deployed infrastructure

---

# Repository Structure

```text
CloudProject/

├── app/
│   └── Dockerized web application

├── docs/
│   └── Project documentation

├── terraform/
│   ├── provider.tf
│   ├── versions.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── main.tf
│   ├── iam.tf
│   ├── monitoring.tf
│   ├── outputs.tf
│   └── Dockerfile

├── README.md

└── .gitignore 