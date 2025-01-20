terraform {
  backend "s3" {
    bucket = "myfirstbucket1234567890"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
