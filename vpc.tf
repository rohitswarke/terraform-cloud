resource "aws_vpc" "rwvpc" {
  cidr_block       = var.vpc_cidr_range
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_label,
    "Department": "IT"
  }
}