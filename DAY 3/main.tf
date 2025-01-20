provider "aws" {
  region = "ap-south-1"
}

module "ec2_instance" {
  source        = "./modules/ec2_instance"
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"
  subnet_id     = "subnet-07f1dd35f04a733d9"
  key_name      = "jenkins"
}
