provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "myinstance" {
    ami = "ami-04b70fa74e45c3917"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.mysubnet.id
    count = var.cantidad

    tags = {
      Name = "${var.nombre}-my-instance-${count.index + 1}"
    }
}