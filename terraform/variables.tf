variable "aws_region" {
  description = "Region AWS"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Tags and Resources"
  type        = string
  default     = "ecs-static-site"
}

variable "vpc_cidr" {
  description = "Block IPs the VPC"
  type        = string
  default     = "10.0.0.0/16"
}