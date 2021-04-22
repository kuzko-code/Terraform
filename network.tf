resource "aws_vpc" "homework7vpc" {
    cidr_block = "10.0.0.0/24"
    enable_dns_support = true
    enable_dns_hostnames = true
    enable_classiclink = false
    instance_tenancy = "default"
    tags = {
      "Name" = "homework7vpc"
    }
}

resource "aws_subnet" "homework7subnet" {
  vpc_id = aws_vpc.homework7vpc.id
  cidr_block = "10.0.0.0/24"
  tags = {
    "Name" = "homework7subnet"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.homework7vpc.id

  tags = {
    Name = "gw"
  }
}

resource "aws_route_table" "homework7rt" {
  vpc_id = aws_vpc.homework7vpc.id
  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.homework7rt.id
  } 
  tags = {
    "Name" = "homework7rt"
  }
}

resource "aws_security_group" "allowed_ports" {
    name = "allowed_ports"
    description = "Allow some inbound traffic"
    vpc_id = aws_vpc.homework7vpc.id

    ingress = {
      from_port = 80
      protocol = "tcp"
      to_port = 80
      cidr_blocks = ["0.0.0.0/0"]
    }

    egress = {
      from_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
      to_port = 0
    }

    tags = {
      "Name " = "allowed_ports"
    }
}