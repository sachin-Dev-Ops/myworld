provider "aws" {
    region = "us-west-2"
}

module "ec2-instance" {
    source = "./ec2-instance"
    ami_id = "ami-0c2d06d50ce30b442"
    instance_type = "t2.micro"
    vpc_id = "vpc-bc102dc4"
    port = "22"
    cidr_block = "0.0.0.0/0"
}