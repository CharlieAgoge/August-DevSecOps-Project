provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraform-august-project23" {
  bucket = "terraform-august-project23"
}
resource "aws_s3_bucket" "terraform-august-project26" {
  bucket = "terraform-august-project26"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform-august-project23"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}