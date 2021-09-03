
resource "aws_security_group" "app_server-sg" {
    name = "app-sg"
    description = "Allow connections"

    dynamic "ingress" {
        for_each = var.default_ingress
        content {
            description = ingress.value["description"]
            from_port = ingress.key
            to_port = ingress.key
            protocol = "tcp"
            cidr_blocks = ingress.value["cidr_blocks"]
        }
    }
    
    egress {
        cidr_blocks = ["0.0.0.0/0"]
        from_port = 0
        to_port = 0
        protocol = "-1"
    } 

    tags = {
        Name = "app-sg"
    }
}