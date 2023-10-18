provider "aws" {
    region = "us-east-1"
    # shared_credentials_files = "D:/DevOps/AWS/test_user_accessKeys"
    access_key = "AKIARAJ7I62XUATP2SMW"
    secret_key = "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"
}

variable vpc_cidr_block {}
variable env_prefix {}
variable subnet_cidr_block {}
variable avail_zone {}
variable my_ip {}
variable instance_type {}

# # resource "aws_instance" "my-first-ec2" {  // just create to test if connect is happened or not
# #   ami = "ami-053b0d53c279acc90"
# #   instance_type = "t2.micro"

# #   tags = {
# #     Name = "myFirstServer"
# #   }
# # }

# resource "aws_vpc" "myAppVpc" {
#     cidr_block = var.vpc_cidr_block
#     tags = {
#         Name: "${var.env_prefix}-vpc"
#     }
# }

# resource "aws_subnet" "myAppSubnet-1" {
#     vpc_id = aws_vpc.myAppVpc.id
#     cidr_block = var.subnet_cidr_block
#     availability_zone = var.avail_zone
#     tags = {
#         Name: "${var.env_prefix}-subnet-1"
#     }
  
# }

# resource "aws_internet_gateway" "myApp-igw" {
#     vpc_id = aws_vpc.myAppVpc.id
#     tags = {
#       Name: "${var.env_prefix}-igw"
#     }
# }

# /*resource "aws_route_table" "myApp-route-table" {
#     vpc_id = aws_vpc.myAppVpc.id
#     route {
#         cidr_block = "0.0.0.0/0"
#         gateway_id = aws_internet_gateway.myApp-igw.id

#     }
#     tags = {
#       Name: "${var.env_prefix}-igw"
#     }
# }*/

# # resource "aws_route_table_association" "a-rtb-subnet-1" {
# #     route_table_id = aws_route_table.myApp-route-table.id
# #     subnet_id = aws_subnet.myAppSubnet-1.id
# # }

# resource "aws_default_route_table" "main-rtb" {
#     default_route_table_id = aws_vpc.myAppVpc.default_route_table_id

#     route {
#         cidr_block = "0.0.0.0/0"
#         gateway_id = aws_internet_gateway.myApp-igw.id

#     }
#     tags = {
#       Name: "${var.env_prefix}-main-rtb"
#     }
  
# }

# resource "aws_default_security_group" "myapp-sg" {
   
#     vpc_id = aws_vpc.myAppVpc.id

#     ingress {
#         from_port = 22
#         to_port = 22
#         protocol = "tcp"
#         cidr_blocks = [var.my_ip]
#     }
#     ingress {
#         from_port = 8080
#         to_port = 8080
#         protocol = "tcp"
#         cidr_blocks = ["0.0.0.0/0"]
#     }
#     egress {
#         from_port = 0
#         to_port = 0
#         protocol = "-1"
#         cidr_blocks = ["0.0.0.0/0"]
#         prefix_list_ids = []
#     }

#     tags = {
#         Name: "${var.env_prefix}-myapp-sg"
#     }
# }

# data "aws_ami" "latest-amazon-linux-image" {
#     most_recent = true
#     owners = ["amazon"]

#     filter {
#       name = "name"
#       values = ["al2023-ami-2023.2.2023*-kernel-6.1-x86_64"]
#     }
#     filter {
#       name = "virtualization-type"
#       values = ["hvm"]
#     }
# }

# output "ami_id" {
#   value = data.aws_ami.latest-amazon-linux-image
# }

# resource "aws_instance" "myApp-server" {
#   ami = data.aws_ami.latest-amazon-linux-image.id
#   instance_type = var.instance_type
#   subnet_id = aws_subnet.myAppSubnet-1.id
#   vpc_security_group_ids = [aws_default_security_group.myapp-sg.id]
#   availability_zone = var.avail_zone

#   associate_public_ip_address = true
#   key_name = "test_user_secret"

#   tags = {
#     Name: "${var.env_prefix}-server"
#   }
# }
