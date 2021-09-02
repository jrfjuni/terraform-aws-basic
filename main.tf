provider "aws" {
    alias = "east"
    region = "us-east-2"
}

resource "aws_instance" "app_server" {
    ami           = "ami-0443305dabd4be2bc"
    instance_type = "t2.micro"
    count = 2
    vpc_security_group_ids = ["${aws_security_group.app_server-sg.id}"]

    tags = {
      Name = "app-server"
    }
}