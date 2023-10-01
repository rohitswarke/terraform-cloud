resource "aws_subnet" "rwsubnet" {
  vpc_id     = aws_vpc.rwvpc.id
  count = length(var.subnet_cidr_range)
  cidr_block = var.subnet_cidr_range[count.index]

  availability_zone = var.availability_zone[count.index]
  depends_on = [ aws_vpc.rwvpc ]

  tags = {
    Name = var.private_subnet_label
  }
}