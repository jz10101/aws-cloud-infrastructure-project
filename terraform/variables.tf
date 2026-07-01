variable "aws_region" {
  description = "AWS region where infrastructure will be deployed."
  type        = string
}

variable "project_name" {
  description = "Name of the project."
  type        = string
}

variable "environment" {
  description = "Deployment environment."
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type."
  type        = string
}

variable "key_name" {
  description = "Name of the AWS key pair used for SSH access."
  type        = string
}