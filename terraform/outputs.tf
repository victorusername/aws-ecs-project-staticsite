#Create a VPC
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true # Essencial para o ECS encontrar o ECR depois
  enable_dns_hostnames = true # Dá nomes amigáveis para as instâncias

  tags = {
    Name = "${var.project_name}-vpc"
  }
}

#Create Internet gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.project_name}-igw"
  }
}