variable "region" {
    type = string
    description = "Em qual região deseja criar sua infra ?"
}

variable "number_of_instances" {
    type = number
    description = "Quantas instâncias deseja criar ?"
}

variable default_ingress {
    type = map(object({
        description = string,
        cidr_blocks = list(string)
    }))
    default = {
      22 = {description = "Inbound para SSH", cidr_blocks = ["127.0.0.1/32"]}
      80 = {description = "Inbound para HTTP", cidr_blocks = ["0.0.0.0/0"]}
      443 = {description = "Inbound para HTTPS", cidr_blocks = ["0.0.0.0/0"]}
    }
}