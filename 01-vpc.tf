# Creating a VPC with a CIDR block of 10.0.0.0/16 and default instance tenancy
#================================================================================
resource "aws_vpc" "benco-vpc" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"
  enable_dns_support = true 
  enable_dns_hostnames = true


  tags = {
    Name = "${var.client_name}-vpc"
  }
}