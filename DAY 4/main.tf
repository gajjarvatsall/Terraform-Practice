provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"
  subnet_id     = "subnet-07f1dd35f04a733d9"
  key_name      = "jenkins"
}

resource "aws_s3_bucket" "aws_S3_bucket" {
  bucket = "myfirstbucket1234567890"
}

resource "aws_dynamodb_table" "terraform_state_lock" {
  name           = "terraform-state-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  
}