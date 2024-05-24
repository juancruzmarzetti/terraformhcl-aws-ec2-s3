resource "aws_s3_bucket" "mybucket" {
    bucket = "${var.nombre}-my-bucket"
}