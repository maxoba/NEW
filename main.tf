provider "aws" {
    region = "us-west-2"
}
 resource "aws_vpc" "test-vpc" {
    cidr_block = "10.0.0.0/24"

    tags = {
        Name = "action-test-vpc"
    }
 }

 terraform {
    backend "s3" {
        bucket = "maxomo1"
        key = "github-action/terraform.tfstate"
        region = "us-west-2"
    }
 }