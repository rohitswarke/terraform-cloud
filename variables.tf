variable "resource_tags" {
    type = map(string)
    default = {
      "Name" = "RW-DB-Server",
      "Department": "IT"
    }
}

variable "image_id" {
  type = string
  default = "ami-0bb4c991fa89d4b9b"
}

variable "vm_type" {
    type = string
    default = "t2.micro"
  
}

variable "vpc_cidr_range" {
  type = string
  default = "10.15.0.0/16"
}

variable "vpc_label" {
  type = string
  default = "RW-TF-LAB1-VPC"
}

variable "private_subnet_cidr_range" {
    type = string
    default = "10.15.1.0/24"
}

variable "private_subnet_label" {
    type = string
    default = "RW-TF-LAB1-PRIVATE-SUBNET"
  
}

variable "network_interface_ips" {
    type = list(string)
    default = [ "10.15.1.15" ]
  
}

variable "subnet_cidr_range" {
  type = list(string)
  default = [ "10.15.1.0/25", "10.15.1.128/25", "10.15.2.0/25" ]
}

variable "availability_zone" {
  type = list(string)
  default = [ "us-east-1a", "us-east-1b", "us-east-1c" ]
}

# variable "object_var" {
#   type = object({
#     name = 
#   })
  
# }