   provider "aws" {
     region = "ap-south-1"  # Set your desired AWS region
   }

   resource "aws_instance" "example" {
     ami           = "ami-00bb6a80f01f03502"  # Specify an appropriate AMI ID
     instance_type = "t2.micro"
     subnet_id     = "subnet-07f1dd35f04a733d9"  # Specify the subnet ID
     key_name = "jenkins"
   }