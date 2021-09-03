provider "aws" {
    region = var.region
}

resource "aws_instance" "app_server" {
    ami           = data.aws_ami.amazon_linux.id
    instance_type = "t2.micro"
    count = var.number_of_instances
    vpc_security_group_ids = ["${aws_security_group.app_server-sg.id}"]

    tags = {
      Name = "app-server"
    }
}