data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  #we removed few lines we don't need it (hvm)

  owners = ["099720109477"] # Canonical
}

data "aws_vpc" "talent-academy" {
    filter {
        name   = "tag:Name"
        values = ["lab-vpc"]
  } 
}

data "aws_subnet" "Public" {
    filter {
        name   = "tag:Name"
        values = ["public"]
  } 
}