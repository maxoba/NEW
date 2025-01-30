provider "aws" {
    region = "us-west-2"
}
 resource "aws_vpc" "test-vpc" {
    cidr_block = "10.0.0.0/24"

    tags = {
        Name = "action-test-vpc"
    }
 }