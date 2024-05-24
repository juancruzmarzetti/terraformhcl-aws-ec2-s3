resource "aws_subnet" "mysubnet" {
    vpc_id            = "vpc-0fde2e0a149541970"
    cidr_block        = "172.31.0.0/16" 
    availability_zone = "us-east-1a"  

    tags = {
        Name = "${var.nombre}-my-subnet"
    }
}