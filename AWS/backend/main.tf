# creds in backend.tf file
Provider "aws" {
  region = "region here"
}

# create VPC
resource "aws_vpc" "test"{
  cidr_block = "10.0.0.0/16"
  
}
